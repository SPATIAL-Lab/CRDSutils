report = function(job, firstDate = "2010-01-01", style = "sirfer", runs = FALSE, 
                    ignore = TRUE, plot = TRUE){

  cfg = init()
  
  if(length(grep("[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}", firstDate)) == 0){
    stop("Bad firstDate")
  }
  firstDate = as.Date(firstDate)  
  
  if(!(style %in% c("spatial", "sirfer", "neon"))){
    stop("Bad style")
  }
  
  channel = odbcConnect(cfg$db)
  on.exit(close(channel))
  ## opens a connection to the database
  
  ###############################################################
  ##         Find unique runs for the group of samples         ##
  ###############################################################

  
  if(ignore == TRUE){
    r = unique(sqlQuery(channel,paste0("SELECT WI_Analysis_Instrument, 
        WI_Analysis_Date FROM Water_Isotope_Data WHERE Sample_ID LIKE '", job, "%' 
        AND WI_Analysis_Date >= '", firstDate,"' AND WI_Analysis_Ignore = 0")))
  }else if(ignore == FALSE){
    r = unique(sqlQuery(channel,paste0("Select WI_Analysis_Instrument, 
        WI_Analysis_Date FROM Water_Isotope_Data WHERE  Sample_ID LIKE '", job, "%' 
        AND WI_Analysis_Date >= '", firstDate,"'")))
  }
  ## stores a dataframe with the unique combinations of
  ## machine and date associated with the given job and 
  ## equal to or greater than the given date. If 
  ## ignore = TRUE, it removes any data where Ignore = 0
  
  p = sqlQuery(channel, paste0("Select Instrument, Run_date, 
        PT_O_sd, PT_H_sd, Ignore_run FROM Parameters_table
        WHERE Run_date >= '", firstDate,"'"))
  ## stores a dataframe with the columns Instrument, Run date, 
  ## and Ignore_run from the Parameters_table

  colnames(r) = c("Instrument", "Run_date")
  r = merge(r,p[,c(1,2,5)], by = c("Instrument","Run_date"))
  ## merges r & p
  
  r = r[r$Ignore_run == 0,]
  ## excludes runs where the whole run was flagged
  
  if(runs == TRUE){return(r)}
  ## returns r if runs = TRUE
  
  r2 = r
  ## creates a copy of r that will be modified 
  
  r2$'Run_date2' = format(as.Date(r$'Run_date'), "%y%m%d")
  ## modifies run date format
  
  r2$Instrument2 = tolower(r2$Instrument)
  ## modifies Instrument format
  
  files = list.files(cfg$outPath, full.names = TRUE)
  ## lists the files in the Bowen_Lab/CRDS_liquidH2O folder
  
  ###############################################################
  ##             Find data for the group of samples            ##
  ###############################################################

  data = sqlQuery(channel, paste0("Select * from Water_Isotope_Data 
             WHERE  Sample_ID LIKE '", job, "%' AND WI_Analysis_Date >= '", firstDate,"'"))
  ## stores a table of the data for the run
  
  if(nrow(data) == 0){
    stop("No data for these criteria")
  }

  data$run = paste(data$WI_Analysis_Instrument, data$WI_Analysis_Date)
  ## creates a column that combines Instrument & Run date in data

  runs = paste(r$Instrument,r$Run_date)
  ## creates a vector combines Instrument & Run date from r
  
  data = data[data$run %in% runs,]
  ## excludes runs that are not in r2 (i.e. were excluded because
  ## the entire run was ignored)
  
  data$run = NULL
  ## removes run column
  
  data$WI_Analysis_Date = format(as.Date(data$WI_Analysis_Date), "%m/%d/%Y")
  ## reformats Run date column
  
  data$Sample_ID = substring(data$Sample_ID, regexpr("_", data$Sample_ID)+1)
  ## removes job number prefix from Sample IDs
  
  if(ignore == TRUE){ 
    data = data[data$WI_Analysis_Ignore == 0,]
  }
  ## if ignore = TRUE, excludes data where Ignore = 1
  
  ###############################################################
  ##                        Plot data                          ##
  ###############################################################
  
  if(plot == TRUE){plot_gmwl(data)}
    ## plots the data with the GMWL  
  
  ###############################################################
  ##            Create xlsx or csv file to write data to              ##
  ###############################################################
  
  sdate = Sys.Date()
  ## stores the current date
  
  sdate = gsub("-","",sdate)  
  ## removes dashes
  
  sdate2 = sub("20","",sdate)
  ## removes 20 from the date
  
  if(!dir.exists(file.path(cfg$reportPath, style))){
    dir.create(file.path(cfg$reportPath, style))
  }
  ## check for output directory and create if necessary
  
  if (style != "neon"){
    output_file = paste0(sdate2, "_", job, ".xlsx")
    ## pastes together the date with the job and the file extension
  
    output_file = gsub("/", "_", output_file)
    ## replaces any foward slashes with underscores
  
    output_file = file.path(cfg$reportPath, style, output_file)
    ## creates output_file name with full filepath for the
    ## given report type
    
    if(file.exists(output_file)){file.remove(output_file)} 
    wb = createWorkbook()
    ## checks for and removes existing files with same name
    
  } else{
    output_file_1 = file.path(cfg$reportPath, style, paste0("WaterIsotope_",
                          job, "_", sdate,".csv"))
    output_file_2 = file.path(cfg$reportPath, style, paste0("WaterIsotope_",
                         job, "_", sdate,"_QA.csv"))
    if(file.exists(output_file_1)){file.remove(output_file_1)} 
    if(file.exists(output_file_2)){file.remove(output_file_2)}
    ## creates and checks NEON csv file names
  }
  
  ################################################################
  ##                   Write SPATIAL report                     ##
  ################################################################
  
  if(style == "spatial"){
    parameters = merge(r, p)
    ## merges r & p
    
    parameters$Ignore_run = NULL
    ## removes Ignore_run column
    
    parameters$Run_date = format(as.Date(parameters$Run_date), "%m/%d/%Y")
    ## reformats date column
    
    outputs = list(data = data, parameters = parameters)
    ## creates a list of two dataframes - data & parameters
    
    lapply(names(outputs), function(x) addWorksheet(wb, sheetName=x))
    ## creates one tab in the workbook for each of the tables
    ## in data
    
    lapply(names(outputs), function(x) writeData(wb, sheet=x, outputs[[x]]))
    ## writes each table in data to corresponding worksheet
    
    saveWorkbook(wb, output_file)
    ## save the file
  }

  
  #################################################################
  #                    Write SIRFER report                        #
  #################################################################

  if(style == "sirfer"){
    refs = refRead(cfg$refFile) 
    
    ## These are static across runs
    
    body.head = data.frame(ID = "ID", d2H = "d2H (permil)", d18O = "d18O (permil)")
    
    qa.head = data.frame(ID = rep("", 2), d2H = rep("", 2), d18O = rep("", 2))
    qa.head[1, 1] = "Quality Assurance"
    qa.head[2, ] = c("ID", "d2H (permil)", "d18O (permil)")
    
    qa = data.frame(ID = rep("", 6), d2H = numeric(6), d18O = numeric(6))
    qa[1, 1] = "PLRM-1, 2-point calibration against VSMOW2 and GISP"
    qa[1, 2:3] = rep(NA)
    qa[2, 1] = "Calibrated value"
    qa[2, 2] = refs$refs["plrm1",]$h.known
    qa[2, 3] = refs$refs["plrm1",]$o.known
    qa[3, 1] = "Uncertainty (1 sd)"
    qa[3, 2] = refs$refs["plrm1",]$h.known.sd
    qa[3, 3] = refs$refs["plrm1",]$o.known.sd
    
    qa[4, 1] = "PLRM-2, 2-point calibration against VSMOW2 and GISP"
    qa[4, 2:3] = rep(NA)
    qa[5, 1] = "Calibrated value"
    qa[5, 2] = refs$refs["plrm2",]$h.known
    qa[5, 3] = refs$refs["plrm2",]$o.known
    qa[6, 1] = "Uncertainty (1 sd)"
    qa[6, 2] = refs$refs["plrm2",]$h.known.sd
    qa[6, 3] = refs$refs["plrm2",]$o.known.sd      
    
    qc.head = data.frame(ID = rep("", 2), d2H = rep("", 2), d18O = rep("", 2))
    qc.head[1, 1] = "Quality Control"
    qc.head[2, ] = c("ID", "d2H (permil)", "d18O (permil)")
    
    ## Excel styles
    options("openxlsx.borderStyle" = "thin",
            "openxlsx.borders" = "surrounding")
    main.style = createStyle(fgFill = "#CCFFFF", fontName = "Times New Roman",
                             fontSize = 12)
    qa.style = createStyle(fgFill = "#FFFF99", fontName = "Times New Roman",
                           fontSize = 12)
    qc.style = createStyle(fgFill = "#FFCC99", fontName = "Times New Roman",
                           fontSize = 12)
    iso.style = createStyle(halign = "center", numFmt = "0.0")
    head.style = createStyle(halign = "center", 
                             border = "TopBottomLeftRight")
    
    addWorksheet(wb, sheetName = "CRDS Results")
    bx = 0
    for (i in 1:nrow(r2)){
      data_si = data[data$WI_Analysis_Instrument == as.character(r2$Instrument[i]) & 
                     as.Date(data$WI_Analysis_Date,
                     format="%m/%d/%Y") == r2$Run_date[i],]
      ## subsets data by the given instrument & date
      
      data_si = data.frame(ID = data_si$Sample_ID, d2H = data_si$d2H, d18O = data_si$d18O, 
                           Ignore = data_si$WI_Analysis_Ignore)
      data_si = data_si[data_si$Ignore == 0,]
      ## creates a dataframe with only the desired columns
      
      if(nrow(data_si) > 0){
        head = data.frame(ID = rep("", 7), d2H = rep(NA, 7),
                          d18O = rep(NA, 7))
        head[1, 1] = "SIRFER CRDS-H20"
        head[2, 1] = paste("Analyst:", cfg$user)
        head[3, 1] = paste("Job #", job)
        head[4, 1] = paste("Primary reference 1 (PLRM-1):", refs$refs["plrm1",]$ID)
        head[5, 1] = paste("Primary reference 2 (PLRM-2):", refs$refs["plrm2",]$ID)
        head[6, 1] = paste("Secondary reference (SLRM):", refs$refs["slrm",]$ID)
        head[7, 1] = paste("Date analyzed:", r2$Run_date[i])
        
        ## creates a dataframe that will serve as a placeholder
        ## for the header that will get pasted into the datasheet
        
        body = data_si[, 1:3]
        
        file = grep(paste0("(?=.*", r2$Run_date2[i], ")(?=.*",
                           r2$Instrument[i], ")"), files, 
                    value = TRUE, perl = TRUE)
        ## finds filename for excel file with run data
        
        if(length(file) == 0){
          stop("Can't locate the CRDS output files for one or more runs.")
        }

        slrm.df = read.xlsx(file, sheet = "slrm.summary")
        if(ignore){
          slrm.df = slrm.df[slrm.df$ignore_sample == 0,]
        }
        ## reads in slrm.df table from file
        
        qc = data.frame(ID = slrm.df$ID, d2H = slrm.df$d2H_cm, 
                          d18O = slrm.df$d18O_cm)
        ## creates a new dataframe using the desired columns
        
        qc.foot = data.frame(ID = rep("", 5), d2H = numeric(5), d18O = numeric(5))
        qc.foot[1, 1] = "Measured average"
        qc.foot[1, 2:3] = c(mean(qc$d2H), mean(qc$d18O))
        qc.foot[2, 1] = "Measured standard deviation"
        qc.foot[2, 2:3] = c(sd(qc$d2H), sd(qc$d18O))
        qc.foot[3, 1] = "Calibrated value"
        qc.foot[3, 2] = refs$refs["slrm",]$h.known
        qc.foot[3, 3] = refs$refs["slrm",]$o.known
        qc.foot[4, 1] = "Acceptable range max"
        qc.foot[4, 2] = refs$criteria$slrm.h.max
        qc.foot[4, 3] = refs$criteria$slrm.o.max
        qc.foot[5, 1] = "Acceptable range min"
        qc.foot[5, 2] = refs$criteria$slrm.h.min
        qc.foot[5, 3] = refs$criteria$slrm.o.min

        sc = 1 + bx * 4
        sr.body = 1 + nrow(head) + 1
        sr.qa.head = sr.body + nrow(body)
        sr.qa = sr.qa.head + nrow(qa.head)
        sr.qc.head = sr.qa + nrow(qa)
        sr.qc = sr.qc.head + nrow(qc.head)
        sr.qc.foot = sr.qc + nrow(qc)
        
        writeData(wb, 1, head, startCol = sc, colNames = FALSE)
        writeData(wb, 1, body.head, startCol = sc, startRow = sr.body - 1, colNames = FALSE)
        writeData(wb, 1, body, startCol = sc, startRow = sr.body, colNames = FALSE)
        writeData(wb, 1, qa.head, startCol = sc, startRow = sr.qa.head, colNames = FALSE)
        writeData(wb, 1, qa, startCol = sc, startRow = sr.qa, colNames = FALSE)
        writeData(wb, 1, qc.head, startCol = sc, startRow = sr.qc.head, colNames = FALSE)
        writeData(wb, 1, qc, startCol = sc, startRow = sr.qc, colNames = FALSE)
        writeData(wb, 1, qc.foot, startCol = sc, startRow = sr.qc.foot, colNames = FALSE)
        
        addStyle(wb, 1, main.style, rows = 1:(sr.qa.head - 1), 
                 cols = sc:(sc + 2), gridExpand = TRUE, stack = TRUE)
        addStyle(wb, 1, qa.style, rows = sr.qa.head:(sr.qc.head - 1),
                 cols = sc:(sc + 2), gridExpand = TRUE, stack = TRUE)
        addStyle(wb, 1, qc.style, rows = sr.qc.head:(sr.qc.foot + nrow(qc.foot) - 1),
                 cols = sc:(sc + 2), gridExpand = TRUE, stack = TRUE)
        addStyle(wb, 1, iso.style, rows = 1:(sr.qc.foot + nrow(qc.foot) - 1),
                 cols = (sc + 1):(sc + 2), gridExpand = TRUE, stack = TRUE)
        
        mergeCells(wb, 1, sc:(sc+2), 1)
        mergeCells(wb, 1, sc:(sc+2), sr.qa.head)
        mergeCells(wb, 1, sc:(sc+2), sr.qc.head)
        
        addStyle(wb, 1, head.style, rows = 1, cols = sc:(sc + 2), 
                 stack = TRUE)
        addStyle(wb, 1, head.style, rows = sr.qa.head, cols = sc:(sc + 2), 
                 stack = TRUE)
        addStyle(wb, 1, head.style, rows = sr.qc.head, cols = sc:(sc + 2), 
                 stack = TRUE)

        setColWidths(wb, 1, cols = sc:(sc + 2), widths = c(32, 14, 14))
        
        bx = bx + 1
      }
    }

    saveWorkbook(wb, output_file, overwrite = TRUE)
    ## save the file after everything is added
  }




  #################################################################
  #                      Write NEON report                        #
  #################################################################
  
  if(style == "neon"){
    refs = refRead(cfg$refFile) 
    
    shipping = sqlQuery(channel, "SELECT * FROM NEON_shipping")
    ## creates a table with the data from the NEON_shipping table 
    ## in the database
    
    qa = sqlQuery(channel, "SELECT Instrument, Run_date, Analyst FROM Parameters_table")
    ## grab info needed from run parameters DB table
    
    data_n = merge(data, shipping, by.x = "Sample_ID", by.y = "sampleID")
    ## merges data with shipping to add the shipping information 
    ## to the table
    
    data_n$WI_Analysis_Date = as.Date(data_n$WI_Analysis_Date, "%m/%d/%Y")
    data_n = merge(data_n, qa, by.x = c("WI_Analysis_Instrument", "WI_Analysis_Date"), 
                   by.y = c("Instrument", "Run_date"))
    
    data_n = data.frame(sampleCode = data_n$Sample_ID, sampleID = rep(""),
                         instrumentSN = data_n$WI_Analysis_Instrument,
                         dateProcessed = data_n$WI_Analysis_Date,
                         d18O = data_n$d18O, d2H = data_n$d2H,
                         d18O_sd = data_n$d18O_Analytical_SD, 
                         d2H_sd = data_n$d2H_Analytical_SD,
                         ignore = data_n$WI_Analysis_Ignore,
                         analyzingLabName = "University of Utah SIRFER",
                         analyst = data_n$Analyst,
                         sampleCondition = data_n$shipmentCondition,
                         remarks = gsub("\"", "\'", data_n$receivedRemarks) )
    ## creates a dataframe with only the desired columns, adds one
    ## for analyzingLabName, reformats the dates & renames the columns
    
    data_n$dateProcessed = as.character(data_n$dateProcessed)
    data_n$dateProcessed = gsub("-", "", data_n$dateProcessed)
    ## NEON date format omits dashes

    write.csv(data_n, output_file_1, row.names = FALSE, fileEncoding = "UTF-8")
  
  
  ##qaqc info
    qaqc = data.frame()
  
    for (i in 1:nrow(r)){       
      file = grep(paste0("(?=.*",r2$Run_date2[i],")(?=.*",
                          r$Instrument[i],")"), files, value=TRUE, 
                          perl=TRUE)
      ## looks up filename for given date & instrument

      ref = read.xlsx(file, sheet = "ref.compare")
      ## reads in ref.compare table from file
      
      ref2 = ref[ref$ID != refs$refs["slrm",]$ID, c(1,2,7,4,9,5,10)]
      ## subsets dataframe to exclude slrm data & 
      ## only desired columns
      
      colnames(ref2) = c("sampleID", "d18O_measured", "d2H_measured",
                         "d18O_sd", "d2H_sd", "d18O_known", "d2H_known")
      ## renames columns
      
      ref2$qa_qc_ID = c("PLRM-1","PLRM-2")
      ## creates a column with the the qa_qc_ID
      
      ref2$subsamplesProcessed = 4
      ## creates a column for subsamples processed & populates
      ## with the number 4
    
      slrm.df = read.xlsx(file, sheet = "qa.report")
      ## reads in qa.report table from file
      
      slrm.df2 = data.frame(qa_qc_ID = "SLRM", sampleID = refs$refs["slrm",]$ID,
                    d18O_measured = as.numeric(slrm.df$value[17]),
                    d2H_measured = as.numeric(slrm.df$value[18]),
                    d18O_sd = as.numeric(slrm.df$value[19]),
                    d2H_sd = as.numeric(slrm.df$value[20]),
                    d18O_known = refs$refs["slrm",]$o.known,
                    d2H_known = refs$refs["slrm",]$h.known,
                    dateProcessed = as.character(as.Date(
                      slrm.df$value[2],format="%m/%d/%y")),
                    subsamplesProcessed = as.numeric(slrm.df$value[21]) * 4,
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
    
      final = rbind(slrm.df2, ref2)
      ## combines the slrm.df2 & ref2 dataframes

      qaqc = rbind(qaqc,final)
      ## combines the final dataframe with the qaqc dataframe
      ## so that the output of each loop is added to the qaqc
      ## dataframe
    }
  
    qaqc$dateProcessed = gsub("-", "", qaqc$dateProcessed)
    ## NEON date format omits dashes
    
    write.csv(qaqc, output_file_2, row.names = FALSE, fileEncoding = "UTF-8")
  
  }
}

