#####################################################################
####              NEON Shipping Database function		             ####
####      	  Takes NEON spreadsheet (after being updated)       ####
####             and puts relevant fields into WaterDB           ####
#####################################################################

neon_shipment <- function(fname){
  library(RODBC) #loads required library
  library(xlsx) #loads required library
  
  channel = odbcConnect("WIDB")
  #creates channel with filepath to the database
  
  samples <- read.xlsx(fname,sheetName="per sample") 
  #reads in relevant sheet from NEON spreadsheet
  
  samples <- samples[!is.na(samples$Sample.ID),] 
  #subsets df to include only rows with sample IDs (drops rows with no data)
  
  if(class(samples$Date.Collected)=="numeric"){
      samples$Date.Collected <- as.Date(as.character(samples$Date.Collected),"%Y%m%d") 
  }
  #formats the collection date field as a date (required to enter into database)
  
  if(class(samples$receivedDate)=="numeric"){
      samples$receivedDate <- as.Date(as.character(samples$receivedDate),"%Y%m%d") 
  }
  #formats the received date as a date
  
  existing = samples[0,]
  for(i in 1:nrow(samples)){
    existing <- rbind(existing, sqlQuery(channel, paste0("SELECT * FROM NEON_shipping 
               WHERE sampleID = '", samples$Sample.ID[i], "'")))
  }
  if(nrow(existing)>0){
    vdupes = readline(prompt="Duplicate entries found in database. View (Y/N)?")
    if(vdupes!="N") print(existing)
    ddupes = readline(prompt="Delete (Y/N)?")
    if(ddupes=="Y"){ 
      for(i in 1:nrow(samples)){
        sqlQuery(channel, paste0("DELETE FROM NEON_shipping WHERE sampleID = '", samples$Sample.ID[i], "'"))
      }
    } else {stop("data already present in database, no new data imported")}
  }
  #find existing data in DB
  
  n1 = sqlQuery(channel, "SELECT COUNT(*) FROM NEON_shipping")
  for (i in 1:nrow(samples)){
    sqlQuery(channel, paste0("INSERT INTO NEON_shipping (sampleID, shipmentID,  
                             siteID,	dateCollected,	shipmentCondition,	receivedDate,	receivedBy,	receivedRemarks, jobNumber)
                             VALUES ('",samples$Sample.ID[i], "','",                        
                             samples$Shipment.ID[i], "','",
                             samples$Site.ID[i], "','",
                             samples$Date.Collected[i], "','",
                             samples$shipmentCondition[i], "','",
                             samples$receivedDate[i], "','",
                             samples$receivedBy[i],"','",
                             samples$receivedRemarks[i],"','",
                             samples$jobNumber[i],
                             "')"))
  } #this for loop enters the desired fields for each line from the samples df into the database
  n2 = sqlQuery(channel, "SELECT COUNT(*) FROM NEON_shipping")
  print(paste(nrow(samples), "samples in file"))
  print(paste(n2-n1, "samples imported"))
  
  odbcClose(channel) #closes the connection to the database
}