neon_receipt = function(fname){

  cfg = init()
  
  #create channel with filepath to the database
  channel = odbcConnect(cfg$db)
  on.exit(close(channel))
  
  #read in relevant sheet from NEON spreadsheet
  sfile = file.path(cfg$neonPath, fname)
  samples <- read.csv(fname, stringsAsFactors = FALSE) 
  
  #subset df to include only rows with sample codes (drops rows with no data)
  samples <- samples[!is.na(samples$sampleCode),] 

  #get number of samples
  ns = nrow(samples)
  
  #format the shipped date field as a date (required to enter into database)
  if(class(samples$dateShipped)=="character"){
    yst = gregexpr("201", samples$dateShipped[1])
    if(yst<2){ dform = "%Y-%m-%d" } else {
      dform = "%m/%d/%Y"
    }
    samples$dateShipped <- as.Date(samples$dateShipped, dform) 
  }
  
  #format the collection date as a date
  if(class(samples$collectdate)=="character"){
    yst = gregexpr("201", samples$dateShipped[1])
    if(yst<2){ dform = "%Y-%m-%d" } else {
      dform = "%m/%d/%Y"
    }
    samples$collectdate <- as.Date(samples$collectdate, dform) 
  }

  find.dupes(samples$sampleID, ns, channel)
  
  #add received date to samples
  rd = readline("Received date (YYYY-MM-DD) or <enter> for today: ")
  if(nchar(rd) == 0){
    rd = as.Date(date(), "%a %b %d %H:%M:%S %Y")
  } else{
    rd = as.Date(rd)
  }
  samples$shipmentReceivedDate = rep(rd, ns)
  
  #get and add analyst name and job number
  samples$receivedBy = rep(cfg$user, ns)
  jnum = readline("Job number: ")
  samples$jobNumber = rep(jnum, ns)
  
  #add columns for additional info
  trash = rep("N", ns)
  samples$sampleReceived = trash
  trash = rep("", ns)
  samples$acceptedForAnalysis = trash
  samples$sampleCondition = trash
  samples$unknownSamples = trash
  samples$remarks = trash
  
  #set some terms lists and error messages
  badCode = "Barcode not found, enter sample by hand later\n"
  
  #scan samples and collect receipt info
  repeat{
    sbc = readline("Scan sample or enter if done: ")
    if(sbc == "") break
    i = match(sbc, samples$sampleCode)
    if(is.na(i)){
      warning(badCode)
    } else{
      samples$sampleReceived[i] = "Y"
      samples = uinput("Y", samples, i)
    }
  }
  
  #Input any unknown sample IDs
  tok = "Y"
  i=1
  cat("\n")
  while(tok != ""){
    tok = readline("Enter Sample IDs for unknown samples, return for done: ")
    if(tok != "Y" && tok != ""){
      #Fill in sample line...
      samples[ns+i,] = NA
      samples$shipmentID[ns+i] = samples$shipmentID[ns]
      samples$sampleClass[ns+i] = samples$sampleClass[ns]
      samples$sampleID[ns+i] = tok
      samples$unknownSamples[ns+i] = tok
      samples$shipmentReceivedDate[ns+i] = rd
      samples$receivedBy[ns+i] = cfg$user
      samples$jobNumber[ns+i] = jnum
      
      tok = "Y"
      samples$sampleReceived[ns+i] = tok
      samples = uinput(tok, samples, ns+i)
      i = i+1
    }
  }
  
  if(i > 1){
    find.dupes(samples$sampleID[(ns+1):(ns+i-1)], i-1, channel)
  }
  
  #Get current number of samples in DB
  n1 = sqlQuery(channel, "SELECT COUNT(*) FROM NEON_shipping")
  
  #Loop insert
  for (i in 1:nrow(samples)){
    #Paste together text for insert
    sql1 = paste0("INSERT INTO NEON_shipping (sampleID, ",
                                              "shipmentID, ",
                                              "siteID, ",	
                                              "dateCollected, ",
                                              "shipmentCondition, ",	
                                              "receivedDate, ",
                                              "receivedBy, ",
                                              "sampleReceived, ",
                                              "acceptedForAnalysis, ",
                                              "unknownSamples, ",
                                              "receivedRemarks, ",
                                              "jobNumber) ",
                                              "VALUES (")
    sql2 = paste0("'", 
                  samples$sampleID[i], "','",                        
                  samples$shipmentID[i], "','",
                  samples$domainID[i], "','",
                  samples$collectdate[i], "','",
                  samples$sampleCondition[i], "','",
                  samples$shipmentReceivedDate[i], "','",
                  samples$receivedBy[i], "','",
                  samples$sampleReceived[i], "','",
                  samples$acceptedForAnalysis[i], "','",
                  samples$unknownSamples[i], "','",
                  samples$remarks[i], "','",
                  samples$jobNumber[i], "')")

    #change NA and blank to SQL NULL 
    sql2 = gsub("'NA'", "NULL", sql2)
    sql2 = gsub(",NA,", ",NULL,", sql2)
    sql2 = gsub("''", "NULL", sql2)
     
    #post values to the DB
    sqlQuery(channel, paste0(sql1, sql2))
  } 

  #Report out the number of samples in set, number imported
  n2 = sqlQuery(channel, "SELECT COUNT(*) FROM NEON_shipping")
  print(paste(nrow(samples), "samples in file"))
  print(paste(n2-n1, "samples imported"))
  
  #Write receipt form
  receipt = data.frame("shipmentID" = samples$shipmentID, 
                       "shipmentReceivedDate" = samples$shipmentReceivedDate, 
                       "receivedBy" = samples$receivedBy,
                       "sampleID" = samples$sampleID, 
                       "sampleCode"= samples$sampleCode, 
                       "sampleClass" = samples$sampleClass, 
                       "sampleReceived" = samples$sampleReceived, 
                       "acceptedForAnalysis" = samples$acceptedForAnalysis,
                       "sampleCondition" = samples$sampleCondition, 
                       "unknownSamples" = samples$unknownSamples, 
                       "remarks" = samples$remarks, stringsAsFactors = FALSE)
  receipt[receipt$acceptedForAnalysis == "Y" , 9] = ""
  receipt[receipt$acceptedForAnalysis == "Y", 11] = ""
  
  #NEON date format omits dashes
  receipt$shipmentReceivedDate = as.character(receipt$shipmentReceivedDate)
  receipt$shipmentReceivedDate = gsub("-", "", receipt$shipmentReceivedDate)
  
  #output
  fname = paste0(cfg$neonPath, "/Processed/receipt_form_", 
                 receipt$shipmentID[1], ".csv")
  write.csv(receipt, fname, row.names = FALSE, na = "")
  
}

uinput = function(tok, samples, i){

  #set some terms lists and error messages
  ynerr = "Bad value, only Y and N allowed\n"
  condlist_bad = c("damaged", "sample incomplete", "handling error", "other")
  condlist_good = c("OK", "Sample Received Damaged", "Sample Damaged", "Lost During Storage")
  
  #If sample was received, was it accepted for analysis?
  if(tok == "Y"){
    tok = "a"
    while(tok != "Y" && tok != "N"){
      tok = readline("Was sample accepted for analysis (Y/N)? ")
      if(tok != "Y" && tok != "N"){cat(ynerr)}
    }
    samples$acceptedForAnalysis[i] = tok
    
    #If sample was accepted, document condition for data report
    if(tok == "Y"){
      tok = "a"
      while(!(tok %in% condlist_good)){
        cat("possible values: ")
        for(j in 1:length(condlist_good)){
          if(j > 1){cat(", ")}
          cat(condlist_good[j])
        }
        cat("\n")
        tok = readline("What was the sample condition? ")
        if(!(tok %in% condlist_good)){
          cat("Bad value. Condition must be in the list.\n")
        }
      }
      samples$sampleCondition[i] = tok
    } else {  #If sample wasn't accepted for analysis, why?
      tok = "a"
      while(!(tok %in% condlist_bad)){
        cat("possible values: ")
        for(j in 1:length(condlist_bad)){
          if(j > 1){cat(", ")}
          cat(condlist_bad[j])
        }
        cat("\n")
        tok = readline("What was the sample condition? ")
        if(!(tok %in% condlist_bad)){
          cat("Bad value. Condition must be in the list.\n")
        }
      }
      samples$sampleCondition[i] = tok
    }
  }  
  
  #If condition is other, what is it?
  if(tok == "other"){
    tok = ""
    while(tok == ""){
      tok = readline("Enter sample remarks describing condition (required): ")
      if(tok == ""){cat("Bad value. Remarks are required.\n")}
    }
    
    #If condition isn't other, remarks are optional   
  } else{
    tok = readline("Enter any sample comments (optional): ")
  }
  samples$remarks[i] = tok
  
  return(samples)
}

find.dupes = function(IDs, ns, channel){
  
  #find existing data in DB
  existing = data.frame(sampleID = character(), stringsAsFactors = FALSE)
  for(i in 1:ns){
    existing <- rbind(existing, sqlQuery(channel, paste0("SELECT SampleID FROM NEON_shipping 
                                                         WHERE SampleID = '", IDs[i], "'"))) 
  }
  if(nrow(existing)>0){
    vdupes = readline(prompt="Duplicate entries found in database. View (Y/N)?")
    if(vdupes!="N") print(existing)
    ddupes = readline(prompt="Delete (Y/N)?")
    if(ddupes=="Y"){ 
      for(i in 1:nrow(existing)){
        sqlQuery(channel, paste0("DELETE FROM NEON_shipping WHERE SampleID = '", existing$SampleID[i], "'"))
      }
    } else {stop("data already present in database, no new data imported")}
  }
}
