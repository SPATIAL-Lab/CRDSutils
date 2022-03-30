#Push sample data and parameter values to wiDB
db <- function(data){
  ## data is a list of dataframes such as that created by the 
  ## process.data function that includes qa.report & samples.summary

  cfg = init()
  if(!(cfg$db %in% names(odbcDataSources("system")))){
    return(paste("Database", cfg$db, "not available"))
  }
  
  qa <- data$qa.report
  ## stores the qa.report table
  
  Instrument <- qa$value[1]
  ## stores the instrument name
  
  Run_date <- qa$value[2]
  Run_date = as.Date(Run_date, format = "%m/%d/%y")
  ## stores the run date
  
  channel = odbcConnect("WIDB")
  on.exit(close(channel))
  ## creates a connection to the database, must be loaded as ODBC source w/ this name

  existing <- sqlQuery(channel, paste0("SELECT * FROM Parameters_table 
               WHERE Instrument = '",Instrument, "' AND 
               Run_date = '",Run_date,"'"))
  ## creates a table with data that matches the instrument and
  ## run date if it exists

  if(nrow(existing)>0){
    cat("Existing parameter set in database will be overwritten:\n")
    print(existing)
    cat("\n")
    sqlQuery(channel, paste0("DELETE FROM Parameters_table WHERE Instrument = '", 
                               Instrument, "' AND Run_date = '", Run_date, "'"))
  }
  ## finds duplicates in the existing table and reports 
  
  n1 = sqlQuery(channel, "SELECT COUNT(*) FROM Parameters_table")
  sqlQuery(channel,paste0("INSERT INTO Parameters_table(Instrument,
    Run_date, Memory1_O, Memory2_O, Memory3_O, Memory4_O, Drift1_O, 
    Slope_O, Intercept_O, Memory1_H, Memory2_H, Memory3_H, Memory4_H, 
    Drift1_H, Slope_H, Intercept_H, PT_O_ave, PT_H_ave, PT_O_sd, PT_H_sd, 
    PT_count, Ignore_run, Analyst) 
                        VALUES('",Instrument,"','", Run_date,"',",
                        qa$value[3], ",", qa$value[4], ",", 
                        qa$value[5], ",", qa$value[6],",",
                        qa$value[7], ",", qa$value[8], ",",
                        qa$value[9], ",", qa$value[10], ",",
                        qa$value[11], ",", qa$value[12],",",
                        qa$value[13], ",", qa$value[14], ",",
                        qa$value[15], ",", qa$value[16], ",",
                        qa$value[17], ",", qa$value[18],",",
                        qa$value[19], ",", qa$value[20], ",",
                        qa$value[21], ",", qa$value[22], ", '",
                        cfg$user, "')"))
  ## writes data to the Parameters_table in the database
  n2 = sqlQuery(channel, "SELECT COUNT(*) FROM Parameters_table")
  nNew = as.integer(n2 - n1)
  cat(nNew, "parameter set imported\n")
  
  s <- data$samples.summary
  ## stores the samples.summary table
  
  s$Ignore <- ifelse(s$ignore_run == 1 | s$ignore_sample == 1, 1, 0)
  ## creates a single column that determines whether a sample should be ignored
  
  for (i in 1:nrow(s)){
    if(!is.na(s$ID2[i]) && s$ID2[i] != ""){
      s$Sample_ID[i] = paste0(s$ID2[i], "_", s$ID[i])
    } else {
      s$Sample_ID[i] = as.character(s$ID[i])
    }
  }
  ## creates a single column that stores composite ID
  
  existing = sqlQuery(channel, "SELECT * FROM Water_Isotope_Data WHERE Sample_ID = NULL")
  for(i in 1:nrow(s)){
    existing = rbind(existing, sqlQuery(channel, paste0("SELECT * FROM Water_Isotope_Data 
               WHERE WI_Analysis_Instrument = '", Instrument, "' AND 
               WI_Analysis_Date = '", Run_date,"' AND Sample_ID = '", s$Sample_ID[i], "'")))
  }
  if(nrow(existing) > 0){
    cat("Existing data in database will be overwritten:\n")
    print(existing)
    cat("\n")
    for(i in 1:nrow(existing)){
      sqlQuery(channel, paste0("DELETE FROM Water_Isotope_Data WHERE 
                               WI_Analysis_ID = '", existing$WI_Analysis_ID[i], 
                               "'"))
    }
  }
  ## creates a table with data that matches the instrument, run date,
  ## and sample ID if it exists

  wids = sqlQuery(channel, "SELECT WI_Analysis_ID FROM Water_Isotope_Data WHERE 
                  WI_Analysis_ID LIKE 'SPATIAL%'")
  wid_nums = as.integer(substring(wids$WI_Analysis_ID, 
                                  regexpr("_", wids$WI_Analysis_ID)+1))
  widmax = max(wid_nums)
  ## retrieves analysis IDs for SPATIAL samples and finds maximum value

  n1 = sqlQuery(channel, "SELECT COUNT(*) FROM Water_Isotope_Data")
  for(i in 1:nrow(s)){
    qstring = paste0("INSERT INTO Water_Isotope_Data (WI_Analysis_ID, Sample_ID, 
    d2H, d18O, d2H_Analytical_SD, d18O_Analytical_SD, WI_Analysis_Date, 
    WI_Analysis_Source, WI_Analysis_Instrument, WI_Analysis_Ignore)
           VALUES('SPATIAL_", widmax+i, "', '", s$Sample_ID[i], "', ", 
                     s$d2H_cm[i], ", ", s$d18O_cm[i], ", ", s$d2H_csd[i], ", ", 
                     s$d18O_csd[i], ", '", Run_date, "', 'SPATIAL','",  
                     Instrument, "', ", s$Ignore[i], ")")
    qstring = gsub(",NaN,", ",NULL,", qstring)
    qstring = gsub(",NA,", ",NULL,", qstring)
    sqlQuery(channel, qstring)
  }
  n2 = sqlQuery(channel, "SELECT COUNT(*) FROM Water_Isotope_Data")
  cat(nrow(s), "samples in file\n")
  nNew = as.integer(n2 - n1)
  cat(nNew, "samples imported\n")  
  ## writes data to the DB table, analysis ID is autogenerated with prefix and 
  ## incremented integer suffix 
}

#Write tables to tabs in xlsx file for backup/archive
excel <- function(files, data){
  ## file is the filename of a csv with sample ids formatted 
  ## with the date, sample description, and machine name (e.g. 
  ## 150310_SIRFER 14-217_HIDS2046.csv)
  ## data is a list of dataframes such as that created by the 
  ## process.crds function that includes 6 tables
  cfg = init()

  chunks = unlist(strsplit(files$ids.file, "/"))
  output_file = paste0(cfg$outPath, "/", chunks[length(chunks)])
  ## creates a filename to be used for the excel file by modifying
  ## the sample ids filename
  
  output_file <- sub(".csv",".xlsx",output_file)
  ## modifies output_file with the correct file extension
  
  if(file.exists(output_file)){file.remove(output_file)}
  ## removes the output_file if it already exists
  
  wb <- createWorkbook()
  ## creates an empty excel workbook
  
  lapply(names(data), function(x) addWorksheet(wb, sheetName=x))
  ## creates one tab in the workbook for each of the tables
  ## in data
  
  lapply(names(data), function(x) writeData(wb, sheet=x, data[[x]]))
  ## writes each table in data to corresponding worksheet

  saveWorkbook(wb, output_file)
  ## saves the excel workbook to the filename specified by
  ## output_file
  
}
