#####Functions for managing metadata on Spatial_WI DB#####

#Retrieve and view Projects list
review.projects = function(){
  library(readxl)
  library(RODBC)
  channel = odbcConnect("WIDB")
  
  tmp.proj = sqlQuery(channel, "SELECT Project_ID, Project_Name, Contact_Name FROM Projects")
  View(tmp.proj)
  
  close(channel)  
}


#Add new data to DB from Excel template
post.metadata = function(fname, newproj, prefix){
  
  library(readxl)
  library(RODBC)
  channel = odbcConnect("WIDB")
  Sys.setenv(TZ= "GMT")
  if(fname == ""){
    projectFile = "Projects.csv"
    siteFile = "Sites.csv"
    samplesFile = "Samples.csv"
    csvImport = 1
  } else {
    csvImport = 0
  }
  
  #####New project function
  if(newproj == "Y"){
    projlist = sqlQuery(channel, "SELECT Project_ID FROM Projects")
    nextproj = max(projlist) + 1
    nextproj = as.character(nextproj)
    pad = 5 - nchar(nextproj)
    for(i in 1:pad){nextproj = paste0("0",nextproj)}
  }
  
  #####Figure out what needs to be imported
  SitesYN = T
  SamplesYN = T
  if(newproj == "Y"){ 
    ProjectsYN = T } else{
      ProjectsYN = F
    }
  AnalysisYN = T
  ClimateYN = T
  if(csvImport){
    if(!file.exists(siteFile)) SitesYN = F
    if(!file.exists(samplesFile)) SamplesYN = F
    if(!file.exists(projectFile)) ProjectsYN = F
    AnalysisYN = F
    ClimateYN = F
  }
  
  #####Check and load Sites data
  if(SitesYN){
    if(csvImport){
      tmpdat = read.csv(siteFile, colClasses = c("character", "character", "numeric",
                                                 "numeric", "numeric", "character",
                                                 "character", "character", "character",
                                                 "character"), encoding = "UTF-8")
      colnames(tmpdat)[1] = "Site_ID"
    } else {
      tmpdat = read_excel(fname, sheet="Sites", col_names = TRUE, 
                          col_types = c("text", "text", "numeric", "numeric", "numeric",
                                        "text", "text", "text", "text", "text"))
    }
    
    #Set up accounting
    dups=0
    dupIDs="Duplicate IDs"
    err=0
    good=0
    
    #Make sure numbers are stored as numeric
    for(i in 3:5){
      tmpdat[,i] = as.numeric(tmpdat[,i])
    }
    
    #Cycle through rows
    if(nrow(tmpdat)>0){
      for(i in 1:nrow(tmpdat)){
        
        #Check for empty row
        if(is.na(tmpdat$Site_ID[i])) {
          err = err+1
          next()
        }
        
        #Check for duplicate row
        duprow = sqlQuery(channel, paste0("SELECT SITE_ID FROM Sites WHERE Site_ID = '", tmpdat$Site_ID[i], "'"))
        if(nrow(duprow) > 0) {
          dups = dups+1
          dupIDs = rbind(dupIDs, as.character(duprow$SITE_ID))
        } else {
          
          #find and replace apostrophes
          for(j in 2:ncol(tmpdat)){
            tmpdat[i,j] = gsub("'", "_", tmpdat[i,j])
            tmpdat[i,j] = gsub("\u2013", "-", tmpdat[i,j])
            if(!is.na(tmpdat[i,j])){
              if(tmpdat[i,j] == " ") {tmpdat[i,j] = "NULL"}
            }
          }
          
          #replace -9999 elevation with null
          if((tmpdat$Elevation_mabsl[i] == -9999)){tmpdat$Elevation_mabsl[i] = NA}
          
          #create data string
          dat = paste0("('",tmpdat$Site_ID[i],"','",tmpdat$Site_Name[i],"',",tmpdat$Latitude[i],",",tmpdat$Longitude[i],",",
                       tmpdat$Elevation_mabsl[i],",'",tmpdat$Address[i],"','",tmpdat$City[i],"','",
                       tmpdat$State_or_Province[i],"','",tmpdat$Country[i],"','",tmpdat$Site_Comments[i],"')")
          
          #SQL style Nulls
          dat = gsub("'NA'","NULL",dat)
          dat = gsub(",NA,",",NULL,",dat)
          dat = gsub("''", "NULL", dat)
          
          #Insert data
          sqlQuery(channel, paste0("INSERT INTO Sites (Site_ID,Site_Name,Latitude,Longitude,Elevation_mabsl,Address,City,State_or_Province,Country,Site_Comments) VALUES ",
                                   dat))
          good = good+1
        }
      }
    }
    writeLines(paste0("Sites\n", nrow(tmpdat)-err, " total rows\n", good, " imported\n", dups, " duplicates\n"))
    if(dups>0){
      writeLines(dupIDs)
      writeLines("")
    }
  }
  
  #####Check and load Samples data
  if(SamplesYN){
    if(csvImport){
      tmpdat = read.csv(samplesFile, colClasses = c("character", "character", "character",
                                                    "character", "character", "numeric", 
                                                    "character", "numeric", "numeric", 
                                                    "character", "character", "numeric", 
                                                    "character", "integer", "character", 
                                                    "character"),
                        stringsAsFactors = F, encoding = "UTF-8")
      #protection, sometings extrenouous characters are read depending on encoding...
      names(tmpdat)[1] = "Sample_ID"
    } else {
      tmpdat = read_excel(fname, sheet="Samples", col_names = TRUE,
                          col_types = c("text", "text", "text", "text", "guess",
                                        "numeric", "guess", "numeric", "numeric",
                                        "text", "text", "numeric", "text",
                                        "numeric", "text", "text"))
    }
    
    #Set up accounting
    dups=0
    dupIDs="Duplicate IDs"
    err=0
    good=0
    
    if(nrow(tmpdat) > 0){
      for(i in 1:nrow(tmpdat)){
        #Ignore required
        if(is.na(tmpdat$Sample_Ignore[i])) {tmpdat$Sample_Ignore[i] = 0}
        
        #Check for empty row
        if(is.na(tmpdat$Sample_ID[i])) {
          err = err+1
          next()
        }
  
        #concatenate IDs if ID2 included
        if(prefix != ""){
          tmpdat$Sample_ID[i] = paste0(prefix, "_", tmpdat$Sample_ID[i])
        } else if(!is.na(tmpdat$Sample_ID_2[i]) && tmpdat$Sample_ID_2[i] != ""){
          tmpdat$Sample_ID[i] = paste0(tmpdat$Sample_ID_2[i], "_", tmpdat$Sample_ID[i])
        }
        
        #Check for duplicate row
        duprow = sqlQuery(channel, paste0("SELECT Sample_ID FROM Samples WHERE Sample_ID = '", tmpdat$Sample_ID[i], "'"))
        if(nrow(duprow) > 0) {
          dups = dups+1
          dupIDs = rbind(dupIDs, as.character(duprow$Sample_ID))
        } else {
          #find and replace apostrophes and em dashes
          for(j in c(10,11,13,15)){tmpdat[i,j] = gsub("'", "_", tmpdat[i,j])}
          for(j in c(10,11,13,15)){tmpdat[i,j] = gsub("\u2013", "-", tmpdat[i,j])}
          
          #fix date formats from iPhone app, first Start
          if(is.na(tmpdat$Start_Date[i])){
            startDate = ""
          } else if(csvImport) {
            dstr = tmpdat$Start_Date[i]
            endchar = substring(dstr, nchar(dstr), nchar(dstr))
            if(is.na(as.integer(endchar))){
              startDate = strptime(tmpdat$Start_Date[i], "%m/%d/%y %I:%M %p")
              startDate = as.POSIXct(startDate)
            } else {
              startDate = strptime(tmpdat$Start_Date[i], "%m/%d/%y %H:%M")
              startDate = as.POSIXct(startDate) 
            }
          } else {
            startDate = tmpdat$Start_Date[i]
          }
          
          #then Collection
          if(is.na(tmpdat$Collection_Date[i])){
            collectionDate = ""
          } else if(csvImport) {
            dstr = tmpdat$Collection_Date[i]
            endchar = substring(dstr, nchar(dstr), nchar(dstr))
            if(is.na(as.integer(endchar))){
              collectionDate = strptime(tmpdat$Collection_Date[i], "%m/%d/%y %I:%M %p")
              collectionDate = as.POSIXct(collectionDate) 
            } else {
              #need to support other date formats, in particular both %y and %Y
              collectionDate = strptime(tmpdat$Collection_Date[i], "%m/%d/%y %H:%M")
              collectionDate = as.POSIXct(collectionDate) 
            }
          } else {
            collectionDate = tmpdat$Collection_Date[i]
          }
          
          #set Project ID if requested
          if(newproj=="Y"){tmpdat$Project_ID[i]=nextproj}
          #create data string
          dat = paste0("('",tmpdat$Sample_ID[i],"','",tmpdat$Sample_ID_2[i],"','",tmpdat$Site_ID[i],"','",tmpdat$Type[i],"','",startDate,"','",
                       tmpdat$Start_Time_Zone[i],"','", collectionDate,"','", tmpdat$Collection_Time_Zone[i], "','",
                       tmpdat$Sample_Volume_ml[i],"','",tmpdat$Collector_type[i],"','",
                       tmpdat$Phase[i],"',",tmpdat$Depth_meters[i],",'",tmpdat$Sample_Source[i],"',",
                       tmpdat$Sample_Ignore[i],",'",tmpdat$Sample_Comments[i],"','",tmpdat$Project_ID[i],"')")
          
          #SQL style Nulls
          dat = gsub("'NA'","NULL",dat)
          dat = gsub(",NA,",",NULL,",dat)
          dat = gsub("''", "NULL", dat)

          sqlQuery(channel, paste0("INSERT INTO Samples (Sample_ID,Sample_ID_2,Site_ID,Type,Start_Date,Start_Time_Zone,Collection_Date,Collection_Time_Zone,Sample_Volume_ml,Collector_type,Phase,Depth_meters,Sample_Source,Sample_Ignore,Sample_Comments,Project_ID) VALUES ",
                                   dat))
          good = good+1
        }
      }
    }
    writeLines(paste0("Samples\n", nrow(tmpdat)-err, " total rows\n", good, " imported\n", dups, " duplicates\n"))
    if(dups>0){
      writeLines(dupIDs)
      writeLines("")
    }
  }
  #####Check and load Water Isotope data
  if(AnalysisYN){
    #Note anlayses will never be present for wiSamples csv import
    tmpdat = read_excel(fname, sheet="Water_Isotope_Data", col_names =TRUE, col_types = 
                        c("text", "text", "numeric", "numeric", "numeric", "numeric", 
                          "numeric", "numeric", "guess", "text", "text", "text", "text"))
    
    #Set up accounting
    dups=0
    dupIDs="Duplicate IDs"
    err=0
    good=0
  
    #force factors to character vectors
    tmpdat$WI_Analysis_Source = as.character(tmpdat$WI_Analysis_Source)
    tmpdat$WI_Analysis_Instrument = as.character(tmpdat$WI_Analysis_Instrument)
    tmpdat$WI_Analysis_Comments = as.character(tmpdat$WI_Analysis_Comments)
    
    if(nrow(tmpdat) > 0){
      for(i in 1:nrow(tmpdat)){
        #Ignore required
        if(is.na(tmpdat$WI_Analysis_Ignore[i])) {tmpdat$WI_Analysis_Ignore[i] = 0}
        
        #Check for empty row
        if(is.na(tmpdat$WI_Analysis_ID[i])) {
          err = err+1
          next()
        }
        
        #Check for duplicate row
        duprow = sqlQuery(channel, paste0("SELECT WI_Analysis_ID FROM Water_Isotope_Data WHERE WI_Analysis_ID = '", tmpdat$WI_Analysis_ID[i], "'"))
        if(nrow(duprow) > 0) {
          dups = dups+1
          dupIDs = rbind(dupIDs, as.character(duprow$WI_Analysis_ID))
          
        } else {
          #find and replace apostrophes
          for(j in 10:ncol(tmpdat)){tmpdat[i,j] = gsub("'", "_", tmpdat[i,j])}
  
          #create data string
          dat = paste0("('",tmpdat$WI_Analysis_ID[i],"','",tmpdat$Sample_ID[i],"',",tmpdat$d2H[i],",",tmpdat$d18O[i],",",
                       tmpdat$D17O[i],",",tmpdat$d2H_Analytical_SD[i],",",tmpdat$d18O_Analytical_SD[i],",",
                       tmpdat$D17O_Analytical_SD[i],",'",tmpdat$WI_Analysis_Date[i],"','",tmpdat$WI_Analysis_Source[i],"','",
                       tmpdat$WI_Analysis_Instrument[i],"',",tmpdat$WI_Analysis_Ignore[i],",'",tmpdat$WI_Analysis_Comments[i],"')")

          #SQL style Nulls
          dat = gsub("'NA'","NULL",dat)
          dat = gsub("NA,","NULL,",dat)
          dat = gsub("''", "NULL", dat)

          #Insert data
          sqlQuery(channel, paste0("INSERT INTO Water_Isotope_Data (WI_Analysis_ID,Sample_ID,d2H,d18O,D17O,d2H_Analytical_SD,d18O_Analytical_SD,D17O_Analytical_SD,WI_Analysis_Date,WI_Analysis_Source,WI_Analysis_Instrument,WI_Analysis_Ignore,WI_Analysis_Comments) VALUES ",
                                   dat))
          
          good = good+1
        }
      }
    }
    writeLines(paste0("Analyses\n", nrow(tmpdat)-err, " total rows\n", good, " imported\n", dups, " duplicates\n"))
    if(dups>0){
      writeLines(dupIDs)
      writeLines("")
    }
  }
  
  if(ClimateYN){
    tmpdat = read_excel(fname, sheet="Climate_Data", col_names =TRUE)
    
    #Setu up accounting
    dups=0
    dupIDs="Duplicate IDs"
    err=0
    good=0
    
    #force factors to character vectors
    tmpdat$Climate_Source = as.character(tmpdat$Climate_Source)
    tmpdat$Climate_Comments = as.character(tmpdat$Climate_Comments)
    
    if(nrow(tmpdat) > 0){
      for(i in 1:nrow(tmpdat)){
        
        #Check for empty row
        if(is.na(tmpdat$Climate_ID[i])) {
          err = err+1
          next()
        }
        
        #Check for duplicate row
        duprow = sqlQuery(channel, paste0("SELECT Climate_ID FROM Climate_Data WHERE Climate_ID = '", tmpdat$Climate_ID[i], "'"))
        if(nrow(duprow) > 0) {
          dups = dups+1
          dupIDs = rbind(dupIDs, as.character(duprow$Climate_ID))
          
        } else {
          #find and replace apostrophes
          for(j in 8:ncol(tmpdat)){tmpdat[i,j] = gsub("'", "_", tmpdat[i,j])}
          
          #create data string
          dat = paste0("('",tmpdat$Climate_ID[i],"','",tmpdat$Sample_ID[i],"',",tmpdat$Precipitation_mm[i],",",tmpdat$Mean_Temperature_C[i],",",
                       tmpdat$Min_Temperature_C[i],",",tmpdat$Max_Temperature_C[i],",",tmpdat$Vapor_Pressure_hPa[i],",",
                       tmpdat$Climate_Source[i],",'",tmpdat$Climate_Comments[i],"')")
          #SQL style Nulls
          dat = gsub("'NA'","NULL",dat)
          dat = gsub("NA,","NULL,",dat)
          dat = gsub("''", "NULL", dat)
          
          #Insert data
          sqlQuery(channel, paste0("INSERT INTO Climate_Data (Climate_ID,Sample_ID, Precipitation_mm, Mean_Temperature_C, Min_Temperature_C, Max_Temperature_C, Vapor_Pressure_hPa, Climate_Source, Climate_Comments) VALUES ",
                                   dat))
          
          good = good+1
        }
      }
    }
    writeLines(paste0("Climate\n", nrow(tmpdat)-err, " total rows\n", good, " imported\n", dups, " duplicates\n"))
    if(dups>0){
      writeLines(dupIDs)
      writeLines("")
    }
  }
  #####Check and load Projects data
  if(ProjectsYN){
    if (csvImport){
      tmpdat = read.csv(projectFile, colClasses = c("character", "character", "character",
                                           "character", "character", "character",
                                           "integer"), encoding = "UTF-8")
    } else {
      tmpdat = read_excel(fname, sheet="Projects", col_names = TRUE, na = "",
                          col_types = c("text", "text", "text", "text", "text",
                                        "text", "numeric"))
    }
    
    #Set up accounting
    dups=0
    dupIDs="Duplicate IDs"
    err=0
    good=0
    
    if(nrow(tmpdat)>0){
      for(i in 1:nrow(tmpdat)){
        #Check proprietary, set to yes if missing
        if(is.na(tmpdat$Proprietary[i])) {tmpdat$Proprietary[i] = 1}
  
        #set Project ID if requested
        if(newproj=="Y"){
          tmpdat$Project_ID[i] = nextproj
        #otherwise check for empty row  
        } else if(is.na(tmpdat$Project_ID[i])) {
          err = err+1
          next()
        }
        
        #Check for duplicate row
        duprow = sqlQuery(channel, paste0("SELECT Project_ID FROM Projects WHERE Project_ID = '", tmpdat$Project_ID[i], "'"))
        if(nrow(duprow) > 0) {
          dups = dups+1
          dupIDs = rbind(dupIDs, as.character(duprow$Project_ID))
        } else {
          #create data string
          dat = paste0("('",tmpdat$Project_ID[i],"','",tmpdat$Contact_Name[i],"','",tmpdat$Contact_Email[i],"','",tmpdat$Citation[i],"','",
                       tmpdat$URL[i],"','",tmpdat$Project_Name[i],"',",tmpdat$Proprietary[i],")")
          
          #SQL style Nulls
          dat = gsub("'NA'","NULL",dat)
          dat = gsub(",NA,",",NULL,",dat)
          dat = gsub("''", "NULL", dat)
          
          #Insert data
          sqlQuery(channel, paste0("INSERT INTO Projects (Project_ID,Contact_Name,Contact_Email,Citation,URL,Project_Name,Proprietary) VALUES ",
                                   dat))
          good = good+1
        }
      }
    }
    
    writeLines(paste0("Projects\n", nrow(tmpdat)-err, " total rows\n", good, " imported\n", dups, " duplicates\n"))
    if(dups>0){
      writeLines(dupIDs)
      writeLines("")
    }
  }
  
  close(channel)
}


delete.metadata = function(fname){
  
  library(readxl)
  library(RODBC)
  channel = odbcConnect("WIDB")
  
  #####Check and delete Sites data
  tmpdat = read_excel(fname, sheet="Sites", col_names = TRUE)
  err=0
  good=0
  if(nrow(tmpdat)>0){
    for(i in 1:nrow(tmpdat)){
      
      #Check for empty row
      if(is.na(tmpdat$Site_ID[i])) {
        err = err+1
        next()
      }
      
      #Check for duplicate row
      duprow = sqlQuery(channel, paste0("SELECT Site_ID FROM Sites WHERE Site_ID = '", tmpdat$Site_ID[i], "'"))
      if(nrow(duprow) > 0) {
        sqlQuery(channel, paste0("DELETE FROM Sites WHERE Site_ID = '", tmpdat$Site_ID[i], "'"))
        good = good+1
      }
    }
  }
  writeLines(paste0("Sites\n", nrow(tmpdat)-err, " total rows\n", good, " deleted\n"))
  
  
  #####Check and delete Samples data
  tmpdat = read_excel(fname, sheet="Samples", col_names = TRUE)
  err=0
  good=0
  
  #Force factors to strings
  tmpdat$Sample_ID = as.character(tmpdat$Sample_ID)
  tmpdat$Sample_ID_2 = as.character(tmpdat$Sample_ID_2)
  
  if(nrow(tmpdat) > 0){
    for(i in 1:nrow(tmpdat)){
      #Check for empty row
      if(is.na(tmpdat$Sample_ID[i])) {
        err = err+1
        next()
      }

      #concatenate IDs if ID2 included
      if(is.na(tmpdat$Sample_ID_2[i])){}else{tmpdat$Sample_ID[i] = paste0(tmpdat$Sample_ID_2[i], "_", tmpdat$Sample_ID[i])}
      
      #Check for duplicate row
      duprow = sqlQuery(channel, paste0("SELECT Sample_ID FROM Samples WHERE Sample_ID = '", tmpdat$Sample_ID[i], "'"))
      if(nrow(duprow) > 0) {
        sqlQuery(channel, paste0("DELETE FROM Samples WHERE Sample_ID = '", tmpdat$Sample_ID[i], "'"))
        good = good+1
      }
    }
  }
  writeLines(paste0("Samples\n", nrow(tmpdat)-err, " total rows\n", good, " deleted\n"))
  
  
  #####Check and delete Water Isotope data
  tmpdat = read_excel(fname, sheet="Water_Isotope_Data", col_names = TRUE)
  err=0
  good=0
  if(nrow(tmpdat) > 0){
    for(i in 1:nrow(tmpdat)){
      #Check for empty row
      if(is.na(tmpdat$WI_Analysis_ID[i])) {
        err = err+1
        next()
      }
      
      #Check for duplicate row
      duprow = sqlQuery(channel, paste0("SELECT WI_Analysis_ID FROM Water_Isotope_Data WHERE WI_Analysis_ID = '", tmpdat$WI_Analysis_ID[i], "'"))
      if(nrow(duprow) > 0) {
        sqlQuery(channel, paste0("DELETE FROM Water_Isotope_Data WHERE WI_Analysis_ID = '", tmpdat$WI_Analysis_ID[i], "'"))
        good = good+1
      }
    }
  }
  writeLines(paste0("Analyses\n", nrow(tmpdat)-err, " total rows\n", good, " deleted\n"))
  
  
  #####Check and delete Projects data
  tmpdat = read_excel(fname, sheet="Projects", col_names = TRUE)
  err=0
  good=0
  if(nrow(tmpdat)>0){
    for(i in 1:nrow(tmpdat)){
      
      #Check for empty row
      if(is.na(tmpdat$Project_ID[i])) {
        err = err+1
        next()
      }
      
      #Check for duplicate row
      duprow = sqlQuery(channel, paste0("SELECT Project_ID FROM Projects WHERE Project_ID = '", tmpdat$Project_ID[i], "'"))
      if(nrow(duprow) > 0) {
        sqlQuery(channel, paste0("DELETE FROM Projects WHERE Project_ID = '", tmpdat$Project_ID[i], "'"))
        good = good+1
      }
    }
  }
  writeLines(paste0("Projects\n", nrow(tmpdat)-err, " total rows\n", good, " deleted\n"))
  
  close(channel)
}