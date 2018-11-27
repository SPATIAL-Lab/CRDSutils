#####################################################################
####                    Report Function                          ####
####      	  This function is used to generate                  ####
####          SIRFER, SPATIAL, and NEON data reports             ####
####          and plot data for a group of samples               ####
#####################################################################

reports <- function(ID2, date, job, runs= FALSE, report, 
                    ignore = TRUE, plot = TRUE){

  library(RODBC)
  ## loads RODBC library
  
  library(openxlsx)
  ## loads xlsx library
  
  source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R")
  ## loads functions in this file
  
  channel <- odbcConnect("WIDB")
  ## opens a connection to the database
  
  ###############################################################
  ##         Find unique runs for the group of samples         ##
  ###############################################################
  
  date = as.Date(date, "%m/%d/%Y")
  
  if(ignore == TRUE){
    r = unique(sqlQuery(channel,paste0("SELECT WI_Analysis_Instrument, 
        WI_Analysis_Date FROM Water_Isotope_Data WHERE Sample_ID LIKE '", ID2, "%' 
        AND WI_Analysis_Date >= '",date,"' AND WI_Analysis_Ignore = 0")))
  }else if(ignore == FALSE){
    r = unique(sqlQuery(channel,paste0("Select WI_Analysis_Instrument, 
        WI_Analysis_Date FROM Water_Isotope_Data WHERE  Sample_ID LIKE '", ID2, "%' 
        AND WI_Analysis_Date >= '",date,"'")))
  }
  ## stores a dataframe with the unique combinations of
  ## machine and date associated with the given ID2 and 
  ## equal to or greater than the given date. If 
  ## ignore = TRUE, it removes any data where Ignore = 0
  
  p = sqlQuery(channel, paste0("Select Instrument, Run_date, 
        PT_O_sd, PT_H_sd, Ignore_run FROM Parameters_table
        WHERE Run_date >= '", date,"'"))
  ## stores a dataframe with the columns Instrument, Run date, 
  ## and Ignore_run from the Parameters_table

  colnames(r) = c("Instrument", "Run_date")
  r <- merge(r,p[,c(1,2,5)],by=c("Instrument","Run_date"))
  ## merges r & p
  
  r <- r[r$Ignore_run == 0,]
  ## excludes runs where the whole run was flagged
  
  if(runs == TRUE){return(r)}
  ## returns r if runs = TRUE
  
  r2 <- r
  ## creates a copy of r that will be modified 
  
  r2$'Run_date2' <- format(as.Date(r$'Run_date'), "%y%m%d")
  ## modifies run date format
  
  r2$Instrument2 <- tolower(r2$Instrument)
  ## modifies Instrument format
  
  files <- list.files("Bowen_Lab/CRDS_liquidH2O",full.names=T)
  ## lists the files in the Bowen_Lab/CRDS_liquidH2O folder
  
  ###############################################################
  ##             Find data for the group of samples            ##
  ###############################################################

  data <- sqlQuery(channel, paste0("Select * from Water_Isotope_Data 
             WHERE  Sample_ID LIKE '", ID2, "%' AND WI_Analysis_Date >= '",date,"'"))
  ## stores a table of the data for the run

  data$run <- paste(data$WI_Analysis_Instrument, data$WI_Analysis_Date)
  ## creates a column that combines Instrument & Run date in data

  runs <- paste(r$Instrument,r$Run_date)
  ## creates a vector combines Instrument & Run date from r
  
  data <- data[data$run %in% runs,]
  ## excludes runs that are not in r2 (i.e. were excluded because
  ## the entire run was ignored)
  
  data$run <- NULL
  ## removes run column
  
  data$WI_Analysis_Date <- format(as.Date(data$WI_Analysis_Date), "%m/%d/%Y")
  ## reformats Run date column
  
  data$Sample_ID = substring(data$Sample_ID, regexpr("_", data$Sample_ID)+1)
  ## removes job number prefix from Sample IDs
  
  if(ignore == TRUE){ data <- data[data$WI_Analysis_Ignore == 0,]}
  ## if ignore = TRUE, excludes data where Ignore = 1
  
  ###############################################################
  ##                        Plot data                          ##
  ###############################################################
  
  if(plot == TRUE){plot.gmwl(data)}
    ## plots the data with the GMWL  
  
  ###############################################################
  ##            Create xlsx or csv file to write data to              ##
  ###############################################################
  
  sdate <- Sys.Date()
  ## stores the current date
  
  sdate <- gsub("-","",sdate)  
  ## removes dashes
  
  sdate2 <- sub("20","",sdate)
  ## removes 20 from the date
  
  if (report != "neon"){
    output_file <- paste0(sdate2,"_",job,".xlsx")
    ## pastes together the date with the job and the file extension
  
    output_file <- gsub("/","_",output_file)
    ## replaces any foward slashes with underscores
  
    if(report == "spatial"){ 
      output_file <- paste0("Bowen_Lab/Data_reports/",output_file)
    } else if(report == "sirfer"){ 
      output_file <- paste0("Bowen_Lab/Data_reports/SIRFER_SPATIAL/",
                          output_file)
    } 
    ## creates output_file name with full filepath for the
    ## given report type
    
    if(file.exists(output_file)){file.remove(output_file)} 
    wb <- createWorkbook()
    saveWorkbook(wb, output_file)
    ## checks for and removes existing files with same name
    
  } else{
    site <- sub("NEON_","",job)
    output_file_1 <- paste0("Bowen_Lab/Data_reports/NEON/WaterIsotope_",
                          site, "_", sdate,".csv")
    output_file_2 <- paste0("Bowen_Lab/Data_reports/NEON/WaterIsotope_",
                         site, "_", sdate,"_QA.csv")
    if(file.exists(output_file_1)){file.remove(output_file_1)} 
    if(file.exists(output_file_2)){file.remove(output_file_2)}
    ## creates and checks NEON csv file names
  }
  
  ################################################################
  ##                   Write SPATIAL report                     ##
  ################################################################
  
  if(report == "spatial"){
    parameters <- merge(r,p)
    ## merges r & p
    
    parameters$Ignore_run <- NULL
    ## removes Ignore_run column
    
    parameters$Run_date <- format(as.Date(parameters$Run_date), "%m/%d/%Y")
    ## reformats date column
    
    outputs <- list(data = data, parameters = parameters)
    ## creates a list of two dataframes - data & parameters
    
    lapply(names(outputs), function(x) 
      write.xlsx(outputs[[x]], output_file, sheetName=x, 
                 append=TRUE, row.names=FALSE))
    ## writes each of the dataframes in the outputs list to
    ## a tab in the output spreadsheet
  }

  
  #################################################################
  #                    Write SIRFER report                        #
  #################################################################

  if(report == "sirfer"){
    
    for (i in 1:nrow(r2)){

      data_si <- data[data$WI_Analysis_Instrument == as.character(r2$Instrument[i]) & 
                     as.Date(data$WI_Analysis_Date,
                     format="%m/%d/%Y") == r2$Run_date[i],]
      ## subsets data by the given instrument & date
      
      data_si = data.frame(ID=data_si$Sample_ID, d2H=data_si$d2H, d18O=data_si$d18O, Ignore=data_si$WI_Analysis_Ignore)
      ## creates a dataframe with only the desired columns
      
      file <- grep(paste0("(?=.*", r2$Run_date2[i], ")(?=.*",
                          r2$Instrument[i], ")"), files, 
                          value=TRUE, perl=TRUE)
      ## finds filename for excel file with run data
      
      ref <- read.xlsx(file, sheet="ref.all")
      ## reads in ref.all tase from file
      
      ref <- ref[ref$Port > 1 & ref$inj >=7,]
      ## subsets ref to exclude Port 1 & injections < than 7
      
      ref2 <- data.frame(ID = ref$ID, d2H = ref$d2H_cal, 
                         d18O = ref$d18O_cal, 
                         Ignore = numeric(nrow(ref)))
      ## creates a new dataframe using the desired columns from 
      ## ref & renaming them
      
      plrm1.df <- ref2[ref2$ID==plrm1,]
      ## subsets ref2 to include only plrm1 data
      
      plrm2.df <- ref2[ref2$ID==plrm2,]
      ## subsets ref2 to include only plrm2 data
      
      slrm.df <- read.xlsx(file,sheet="slrm.summary")
      ## reads in slrm.df table from file
      
      slrm.df2 <- data.frame(ID = slrm.df$ID, 
                             d2H = slrm.df$d2H_dc,
                             d18O = slrm.df$d18O_dc,
                             Ignore = 0)
      ## creates a new dataframe using the desired columns from
      ## slrm.df & renaming them
      
      head <- data.frame(ID=rep("",7),d2H=rep(0,7),
                         d18O=rep(0,7),Ignore=rep(0,7))
      ## creates a dataframe that will serve as a placeholder
      ## for the header that will get pasted into the datasheet
      
      empty <- data.frame(ID="",d2H="",d18O="",Ignore="")
      ## creates a dataframe with an empty row that will
      ## be serve as a placeholder for rows that will get
      ## pasted into the datasheet
      
      final <- rbind(head,data_si,empty,empty,plrm1.df,empty,
                     empty,empty,plrm2.df,empty,empty,empty,
                     empty,slrm.df2)
      ## creates a dataframe that puts together the data, the 
      ## reference data and the empty placeholder rows
      
      final <- cbind(empty = character(nrow(final)),final)
      ## creates an empty column at the beginning of the df
      
      final$d2H <- as.numeric(final$d2H)
      ## stores d2H column as numeric data
      
      final$d18O <- as.numeric(final$d18O)
      ## stores d18O column as numeric data
  
      write.xlsx(final, output_file,
             sheetName=paste(r$Instrument[i],r$Run_date[i]), 
             append=TRUE, row.names=FALSE)
    }
    ## creates a tab in the output file for each run with the 
    ## sample data and reference data
  }




  #################################################################
  #                      Write NEON report                        #
  #################################################################
  
  if(report == "neon"){
    shipping <- sqlQuery(channel, "SELECT * FROM NEON_shipping")
    ## creates a table with the data from the NEON_shipping table 
    ## in the database
    
    qa = sqlQuery(channel, "SELECT Instrument, Run_date, Analyst FROM Parameters_table")
    ## grab info needed from run parameters DB table
    
    data_n <- merge(data,shipping,by.x="Sample_ID",by.y="sampleID")
    ## merges data with shipping to add the shipping information 
    ## to the table
    
    data_n$WI_Analysis_Date = as.Date(data_n$WI_Analysis_Date, "%m/%d/%Y")
    data_n = merge(data_n, qa, by.x=c("WI_Analysis_Instrument", "WI_Analysis_Date"), 
                   by.y=c("Instrument", "Run_date"))
    
    data_n <- data.frame(sampleID = data_n$Sample_ID,
                         instrumentSN = data_n$WI_Analysis_Instrument,
                         dateProcessed = data_n$WI_Analysis_Date,
                         d18O = data_n$d18O, d2H = data_n$d2H,
                         d18O_sd = data_n$d18O_Analytical_SD, d2H_sd = data_n$d2H_Analytical_SD,
                         ignore = data_n$WI_Analysis_Ignore,
                         analyzingLabName = "University of Utah SIRFER",
                         analyst = data_n$Analyst,
                         sampleCondition = data_n$shipmentCondition,
                         remarks = gsub("\"", "\'", data_n$receivedRemarks) )
    ## creates a dataframe with only the desired columns, adds one
    ## for analyzingLabName, reformats the dates & renames the columns

    write.csv(data_n, output_file_1, row.names=FALSE, fileEncoding = "UTF-8")
  
  
  ##qaqc info
    qaqc <- data.frame()
  
    for (i in 1:nrow(r)){       
      file <- grep(paste0("(?=.*",r2$Run_date2[i],")(?=.*",
                          r$Instrument[i],")"), files, value=TRUE, 
                          perl=TRUE)
      ## looks up filename for given date & instrument

      ref <- read.xlsx(file, sheet="ref.compare")
      ## reads in ref.compare table from file
      
      ref2 <- ref[ref$ID != slrm, c(1,5,6,7,8,11,12)]
      ## subsets dataframe to exclude slrm data & 
      ## only desired columns
      
      colnames(ref2)[1:5] <- c("sampleID","d18O_measured",
                               "d2H_measured","d18O_sd","d2H_sd")
      ## renames columns
      
      ref2$qa_qc_ID <- c("PLRM-1","PLRM-2")
      ## creates a column with the the qa_qc_ID
      
      ref2$subsamplesProcessed <- 4
      ## creates a column for subsamples processed & populates
      ## with the number 4
    
      slrm.df <- read.xlsx(file, sheet = "qa.report")
      ## reads in qa.report table from file
      
      slrm.df2 <- data.frame(qa_qc_ID = "SLRM",sampleID = slrm,
                    d18O_measured = as.numeric(slrm.df$value[17]),
                    d2H_measured = as.numeric(slrm.df$value[18]),
                    d18O_sd = as.numeric(slrm.df$value[19]),
                    d2H_sd = as.numeric(slrm.df$value[20]),
                    d18O_known = qa.df$d18O_known[qa.df$ID==slrm],
                    d2H_known = qa.df$d2H_known[qa.df$ID==slrm],
                    dateProcessed = as.character(as.Date(
                      slrm.df$value[2],format="%m/%d/%y")),
                    subsamplesProcessed = as.numeric(slrm.df$value[21])*4,
                    ignore = as.numeric(slrm.df$value[22]),
                    instrumentSN = slrm.df$value[1])
      ## creates a dataframe with the desired columns, renames &
      ## reformats them
      
      ref2$dateProcessed = rep(slrm.df2$dateProcessed,2)
      ## creates column for dateProcessed in ref2 dataframe
      
      ref2$instrumentSN = rep(slrm.df2$instrumentSN,2)
      ## creates column for instrumentSN in ref2 dataframe
      
      ref2$ignore = rep(slrm.df2$ignore,2)
      ## creates column for ignore in ref2 dataframe
    
      final <- rbind(slrm.df2, ref2)
      ## combines the slrm.df2 & ref2 dataframes

      qaqc <- rbind(qaqc,final)
      ## combines the final dataframe with the qaqc dataframe
      ## so that the output of each loop is added to the qaqc
      ## dataframe
    }
  
    write.csv(qaqc, output_file_2, row.names=FALSE, fileEncoding="UTF-8")
  
  }

  close(channel)
}

