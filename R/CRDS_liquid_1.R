#####################################################################
###                      Correct Functions                        ###
###         These functions are used to take data produced        ###
###         by a Picarro CRDS L2130i Isotopic H2O analyzer        ###
###         for liquid water analyses and memory correct,         ### 
###         and calibrate the raw data points, then average       ###
###         the injections for each port, and drift correct       ### 
###         the mean values. Finally, there are functions         ###
###         that quality-check the final values                   ###
#####################################################################

##  Note
##  1st 3 samples are excluded from sequence used to create 
##  drift correction

#####################################################################
##                        data.mod function                        ##
##           This function reads in the relevant files,            ## 
##           modifies and merges them so they can be used          ## 
##           in the subsequent functions                           ##
#####################################################################

data.mod <- function(data.file, ids.file){
  ##  data.file is the filename of a csv with the isotope
  ##  data produced by a Picarro CRDS with the following columns: 
  ##  Port, Inj Nr, d(18_16)Mean, d(D_H)Mean. 
  ##  Additional columns may be present in csv, but will not be used 
  ##  in function
  ##
  ##  ids.file is the filename of a csv with 4 columns - 
  ##  tray, Port (numeric, i.e. 1,2,etc.), sample ID, and sample 
  ##  campaign or secondary identifier. Column names may vary but   
  ##  the order may not. Additional columns are not allowed and the 
  ##  number of samples should match the number of samples in the  
  ##  isotope file. An example can be seen if you run the following 
  ##  > data.frame(Tray=rep(1,3), Port=c(1,2,3), 
  ##  > ID = c("PT","PZ","UT"), 
  ##  > ID2 = c("SLRM","PLRM-1","PLRM-2"))

	ids <- read.csv(ids.file,stringsAsFactors=FALSE,
                  strip.white=TRUE) 
  ## reads in ids.file
  
  ids <- data.frame(Port = ids[,2], ID = ids[,3], ID2 = ids[,4])
	##selects and renames the relevant columns from ids
  
	iso.data <- read.csv(data.file, stringsAsFactors=FALSE, 
                       strip.white=TRUE) 
  ## reads in data.file   
  
	iso.data <- data.frame(Port = iso.data$Port, 
                         inj = iso.data$Inj.Nr,
                         d18O = iso.data$d.18_16.Mean, 
                         d2H = iso.data$d.D_H.Mean) 
  ##selects and renames the relevant columns from iso.data
  
	iso.data$Port<-as.numeric(regmatches(iso.data$Port,                    
             regexpr("[0-9][0-9]", iso.data$Port))) 
  ##converts the last 2 digits of the port id to numeric
  
	iso.data <- merge(iso.data,ids,stringsAsFactors=FALSE) 
  ##merges iso.data & ids
  
	iso.data <- iso.data[with(iso.data,order(Port,inj)),] 
  ##orders iso.data by Port & inj
  
  return(iso.data)
}

#####################################################################
##                        mc.terms function                        ##
##           This function generates memory-correction             ##
##           terms for d18O & d2H separately using the             ##
##           specified subset of ports and the specified           ##
##           subset of injections                                  ##
#####################################################################

mc.terms <- function(data,ports,injs){ 
  ## data is the dataframe created using the data.mod function
  ## ports is a vector with the port numbers to be used to calculate
  ## the memory-correction terms
  ## injs is a vector with the injections to calculate 
  ## memory-correction terms for
  
  terms <- function(data,col,inj){ 
    ## sub-function that generates the mean mc term for a specified
    ## injection for a given column using the specified ports
    ## data is the dataframe created using the datamod function
    ## col is the column to calculate memory-correction terms for
    ## inj is the injection number to calculate memory-correction
    ## term for
    
    a <- split(col,data$Port) 
    ## splits the given column into vectors by port
    
	  b <- sapply(a,length) 
    ## determines the length of each port vector 
    ## (i.e. number of injections for each port)
    
	  d <- numeric() 
    ## creates empty numeric vector
    
	  for(i in ports){
	    d[i] <- (mean(a[[i]][(b[i]-1):b[i]])-a[[i]][inj])/
        (a[[i]][inj]-a[[i-1]][b[i-1]])
	  }
    ## for loop populates empty vector with the memory correction
    ## term for the given injection for each port. Format is 
    ## (mean last 2 inj - nth inj)/(nth inj - last inj previous sample)
    
	  e <- mean(d[ports]) 
    ## calculates the mean memory-correction term for the 
    ## specified injection over the specified ports
  }  

	o <- sapply(injs,terms,data=data,col=data$d18O) 
  ## calculates the memory-correction terms for all 
  ## specified injections for the d18O column
  
	h <- sapply(injs,terms,data=data,col=data$d2H)
  ## calculates the memory-correction terms for all 
  ## specified injections for the d2H column
  
	return(list(o=o,h=h))
}


#####################################################################
##                        data.mc function                         ##
##           This function generates memory-corrected              ##
##           data for the specified element using the              ##
##           specified list of d18O and d2H memory-                ##
##           correction terms                                      ##
#####################################################################

data.mc <- function(data,element,mc.terms){
  ## data is the dataframe created using the data.mod function
  ## element is either "O" or "H"
  ## mc.terms is the list created using the mc.terms function
  
  col<-if(element =="O"){data$d18O}else if(
    element=="H"){data$d2H} 
  ##dictates column used
  
  m<-if(element=="O"){mc.terms$o}else if(element=="H"){mc.terms$h}
  ##dictates memory corrections used
  
  a <- split(col,data$Port) 
  ## splits the given column into vectors by port
  
  b <- sapply(a,length)
  ## determines the length of each port vector 
  ## (i.e. number of injections for each port)
  
  d <- numeric()
  ## creates empty numeric vector
  
  for(i in 2:length(a)){  
    d[i] <- a[[i-1]][b[i-1]]
  }
  ## for loop populates empty vector with the value from the last
  ## injection for the previous port
  
  e <- data.frame(Port =unique(data$Port),prev = d)
  ## creates dataframe with the unique list of port numbers
  ## and the value from the last injection for the previous port
  
  data <- merge(data,e)
  ## merges data with e on Port, adding the column with the 
  ## value from the last injection for the previous port to data
  ## to be used in the memory-correction calculation
  
  mc <- numeric()
  ## creates empty numeric vector
  
  for(i in 1:length(col)){
    mc[i] <- col[i] + (col[i] - data$prev[i])*m[data$inj[i]]
  }
  ## for loop populates empty vector with the memory-corrected
  ## values for the specified column. Format is 
  ## raw value + (raw value - value from last injection  
  ## for previous port) * memory-correction term for injection 
  ## associated with raw value
  
  return(mc)
}

#####################################################################
##                        cal.reg function                         ##
##           This function calculates a regression line            ##
##           for d18O and d2H between the known values             ##
##           for plrm1 and plrm2 and returns the slope             ##
##           and intercept to be used in calibrating the           ##
##           measured values in the run                            ##
#####################################################################

cal.reg <- function(data, refFile){
  ## data is the dataframe created using the data.mod function and 
  ## updated with memory-corrected values using the data.mc function
  ## qa.file is the filename of a csv with 6 columns - 
  ## parameter, id, min, max, d18O_known, d2H_known - 
  ## and 9 rows (slrm_O_range, slrm_H_range, slrm_O_sd, slrm_H_sd, 
  ## sample_H_sd, sample_O_sd, plrm-1, plrm-2, slrm). An example
  ## can be seen if you run the following lines
  ## > data.frame(parameter=c("slrm_O_range", 
  ## > "slrm_H_range", "slrm_O_sd", "slrm_H_sd", 
  ## > "sample_H_sd", "sample_O_sd", "plrm1", 
  ## > "plrm2","slrm"), id = c(rep(NA,6),"PZ","UT","PT"),
  ## > min=c(-7.26, -47.05, rep(NA,7)),
  ## > max=c(-7,-44.95,0.12,0.5,0.75,0.2,NA,NA,NA),
  ## > d18O_known=c(rep(NA,6),1.83,-16.44,-7.13),
  ## > d2H_known=c(rep(NA,6),17.2,-122.84,-46))
  
  ## reads in qa.file 
  qa <- read.csv(refFile,stringsAsFactors=FALSE) 
  
  ## creates a vector with the known d18O values for plrm1 & plrm2
  o.known <- c(qa$d18O_known[qa$parameter=="plrm1"],
                qa$d18O_known[qa$parameter=="plrm2"])
  o.known.sd = c(qa$d18O_sd[qa$parameter=="plrm1"],
           qa$d18O_sd[qa$parameter=="plrm2"])
  
  ## creates a vector with the known d18O values for plrm1 & plrm2
  h.known <- c(qa$d2H_known[qa$parameter=="plrm1"],
               qa$d2H_known[qa$parameter=="plrm2"])
  h.known.sd = c(qa$d2H_sd[qa$parameter=="plrm1"],
           qa$d2H_sd[qa$parameter=="plrm2"])
  
  ## creates a character string with the sampleID for plrm1
  plrm1 <- qa$ID[qa$parameter=="plrm1"]
  
  ## creates a character string with the sampleID for plrm2
  plrm2 <- qa$ID[qa$parameter=="plrm2"]

  ## creates a vector with the mean measured d18O values for 
  ## plrm1 and plrm 2 
  o.meas <- c(data$d18O_avg[data$ID==plrm1],
              data$d18O_avg[data$ID==plrm2])
  o.meas.sem <- c(data$d18O_sem[data$ID==plrm1],
              data$d18O_sem[data$ID==plrm2])
  
  ## creates a vector with the mean measured d2H values for 
  ## plrm1 and plrm 2  
  h.meas <- c(data$d2H_avg[data$ID==plrm1],
              data$d2H_avg[data$ID==plrm2])
  h.meas.sem <- c(data$d2H_sem[data$ID==plrm1],
              data$d2H_sem[data$ID==plrm2])
  
  o.known.sim = matrix(c(rnorm(1000, o.known[1], o.known.sd[1]),
                           rnorm(1000, o.known[2], o.known.sd[2])), ncol=2)
  
  h.known.sim = matrix(c(rnorm(1000, h.known[1], h.known.sd[1]),
                           rnorm(1000, h.known[2], h.known.sd[2])), ncol=2)

  o.meas.sim = matrix(c(rnorm(1000, o.meas[1], o.meas.sem[1]),
                           rnorm(1000, o.meas[2], o.meas.sem[2])), ncol=2)
  
  h.meas.sim = matrix(c(rnorm(1000, h.meas[1], h.meas.sem[1]),
                           rnorm(1000, h.meas[2], h.meas.sem[2])), ncol=2)
  
  o.slope = apply(o.known.sim, 1, diff) / apply(o.meas.sim, 1, diff)
  o.int = o.known.sim[,1] - o.slope * o.meas.sim[,1]
  ##regression for d18O
  
  h.slope = apply(h.known.sim, 1, diff) / apply(h.meas.sim, 1, diff)
  h.int = h.known.sim[,1] - h.slope * h.meas.sim[,1]
  ##regression for d2H
  
  return(list(o.slope = o.slope, 
              o.int = o.int,
              h.slope = h.slope, 
              h.int = h.int))
}

#####################################################################
##                        data.cal function                        ##
##           This function generates calibrated data for           ##
##           the specified element using the specified list        ##
##           of d18O and d2H calibration slopes & intercepts       ##
#####################################################################

data.cal <- function(data,element,cal){
  ## data is the dataframe created using the data.mod function and 
  ## updated with memory-corrected values using the data.mc function
  ## element is either "O" or "H"
  ## cal is the list created using the cal.reg function
  
  uncalData = if(element =="O"){
    data.frame("AVG" = data$d18O_avg, "SEM" = data$d18O_sem)
  }else if(element=="H"){
    data.frame("AVG" = data$d2H_avg, "SEM" = data$d2H_sem)
  } 
  ##dictates column used
  
  cal.slope <-if(element=="O"){cal$o.slope
  }else if(element=="H"){cal$h.slope} 
  ## dictates slope used
  
  cal.int <-if(element=="O"){cal$o.int
  }else if(element=="H"){cal$h.int} 
  ## dictates intercept used
  
  calMean = calSD = double()
  
  for(i in 1:nrow(uncalData)){
    calData = rnorm(1000, uncalData[i,1], uncalData[i,2]) * cal.slope + cal.int
    calMean = c(calMean, mean(calData))
    calSD = c(calSD, sd(calData))
  }

  ## calculates calibrated values for the
  ## specified column. Format is 
  ## memory-corrected value * slope + intercept
  
  return(list(calMean = calMean, calSD = calSD))
}

#####################################################################
##                        drift.reg function                       ##
##           This function calculates a regression line            ##
##           for d18O and d2H between the mean value for           ##
##           each port with the slrm reference water and           ##
##           the sequence of that port in the run                  ##
#####################################################################

drift.reg <- function(data, qa.file, genPlot){
  ## data is the dataframe created using the data.mod function and 
  ## updated using the data.mc function and data.cal function
  ## qa.file is the filename of a csv as described in the cal.reg 
  ## function
  
  qa <- read.csv(qa.file,stringsAsFactors=FALSE) 
  ## reads in qa.file 
  
  slrm <- qa$ID[qa$parameter=="slrm"]
  ## creates a character string with the sampleID for slrm
  
  data.slrm <- data[data$ID==slrm & data$Port > 1 & data$inj <= 4,]
  ## subsets data to include only slrm water and excluding port 1
  
  data.slrm$seqN <- data.slrm$seqN - 20
  ## creates a column for sequence that subtracts 4 from each port
  ## number so that the first value is 0
  
  o <- lm(data.slrm$d18O_mc ~ data.slrm$seqN) 
  ##regression of mean d18O value against sequence
  
  h <- lm(data.slrm$d2H_mc ~ data.slrm$seqN) 
  ##regression of mean d2H value against sequence
  
  if(genPlot){
    par(mar = c(5,5,1,5))
    plot(data.slrm$seqN, data.slrm$d18O_mc, pch=21, bg = "light blue",
         ylab = "", xlab = "Sequence number")
    mtext("d18O", 2, 3, col = "light blue")
    conf = predict(o, newdata=data.frame(x=data.slrm$seqN), 
                   interval="confidence", level = 0.95)
    lines(data.slrm$seqN, conf[,1], col = "light blue")
    matlines(data.slrm$seqN, conf[,2:3], lty = 2, col = "light blue")
    par(new = TRUE)
    plot(data.slrm$seqN, data.slrm$d2H_mc, pch=21, bg = "red", axes = FALSE,
         ylab = "", xlab = "")
    axis(4)
    mtext("d2H", 4, 3, col = "red")
    conf = predict(h, newdata=data.frame(x=data.slrm$seqN), 
                   interval="confidence", level = 0.95)
    lines(data.slrm$seqN, conf[,1], col = "red")
    matlines(data.slrm$seqN, conf[,2:3], lty = 2, col = "red")
  }
  
  return(list(o = o$coefficients[[2]], h = h$coefficients[[2]]))
}

#####################################################################
##                        data.dc function                         ##
##           This function generates drift-corrected data          ##
##           for the mean d18O and d2H values for each port        ##
#####################################################################

data.dc <- function(data, drift){
  ## data is the dataframe created using the data.mod function and 
  ## updated using the data.mc function and data.cal function
  ## drift is the list created using the drift.reg function
  
  data <- data[data$Port > 1,]
  ## subsets data to exclude ports 1
  
  data$seqN <- data$seqN - 20
  ## subtracts 20 from sequence
  ## number so that the calibration midpoint is 0
  
  data$d18O_dc <- data$d18O_mc - data$seqN * drift$o
  ## calculates drift-corrected values for d18O
  
  data$d2H_dc <- data$d2H_mc - data$seqN * drift$h
  ## calculates drift-corrected values for d2H
  
  return(data)
}

#####
# Collapse multiple injection data to averages and standard errors
#####

collapse = function(data){
  #Average drift corrected isotope vals per port
  avg <- aggregate(data[,c("d18O_dc","d2H_dc")],
                   by=list(Port = data$Port,
                           ID=data$ID, ID2 = data$ID2),
                   mean, na.rm = TRUE)
  
  # Function for standard error of the mean
  sem = function(x){
    x = x[!is.na(x)]
    sd(x)/sqrt(length(x))
  }
  
  #standard error of isotope vals per port
  sterr <- aggregate(data[,c("d18O_dc","d2H_dc")],
                   by=list(Port = data$Port,
                           ID=data$ID, ID2 = data$ID2),
                   sem)

  names(avg)[4:5] = c("d18O_avg", "d2H_avg")
  names(sterr)[4:5] = c("d18O_sem", "d2H_sem")
  
  return(merge(avg, sterr, by=c("Port","ID","ID2")))
}


#####################################################################
##                        qa.flag function                         ##
##           This function evaluates the mean and sd for           ##
##           slrm to determine if they are within acceptable       ##
##           limits to determine the overall quality of the        ##
##           run, as well as the sd for each port to assess        ##
##           the data quality for each sample                      ##
#####################################################################

qa.flag <- function(data, qa.file){
  ## data is the dataframe created by the data.dc function
  ## qa.file is the filename of a csv as described in the cal.reg 
  ## function 
  
  qa <- read.csv(qa.file,stringsAsFactors=FALSE) 
  ## reads in qa.file 
  
  slrm <- qa$ID[qa$parameter=="slrm"]
  ## creates a character string with the sampleID for slrm
  
  slrm.o <- mean(data$d18O_avg[data$ID==slrm],na.rm=T)
  ## calculates mean for slrm d18O
  
  slrm.h <- mean(data$d2H_avg[data$ID==slrm],na.rm=T)
  ## calculates mean for slrm d2H
  
  slrm.o.sd <- sd(data$d18O_avg[data$ID==slrm],na.rm=T)
  ## calculates sd for slrm d18O
  
  slrm.h.sd <- sd(data$d2H_avg[data$ID==slrm],na.rm=T)
  ## calculates sd for slrm d2H
  
  slrm.o.max <- qa$max[qa$parameter=="slrm_O_range"]
  ## stores the value for slrm d18O max acceptable value
  
  slrm.o.min <- qa$min[qa$parameter=="slrm_O_range"]
  ## stores the value for slrm d18O min acceptable value
  
  slrm.h.max <- qa$max[qa$parameter=="slrm_H_range"]
  ## stores the value for slrm d2H max acceptable value
  
  slrm.h.min <- qa$min[qa$parameter=="slrm_H_range"]
  ## stores the value for slrm d2H min acceptable value
  
  slrm.o.sd.max <- qa$max[qa$parameter=="slrm_O_sd"]
  ## stores the value for slrm d18O max acceptable sd
  
  slrm.h.sd.max <- qa$max[qa$parameter=="slrm_H_sd"]
  ## stores the value for slrm d2H max acceptable sd
  
  sample.o.sd.max <- qa$max[qa$parameter=="sample_O_sd"]
  ## stores the value for sample d18O max acceptable sd
  
  sample.h.sd.max <- qa$max[qa$parameter=="sample_H_sd"]
  ## stores the value for sample d2H max acceptable sd
  
  data$ignore_run <- ifelse(slrm.o > slrm.o.max | slrm.o < slrm.o.min | 
                              slrm.h > slrm.h.max | slrm.h < slrm.h.min | 
                              slrm.o.sd > slrm.o.sd.max | 
                              slrm.h.sd > slrm.h.sd.max, 1, 0)
  ## returns a 1 if any of the slrm quality parameters are violated
  ## and a 0 if not
  
  data$ignore_sample <- ifelse(data$ignore_run == 1 | 
                                  complete.cases(data) == FALSE |
                                  data$d18O_sd > sample.o.sd.max |
                                  data$d2H_sd > sample.h.sd.max, 1, 0)
  ## returns a 1 if any of the slrm quality parameters were violated
  ## as determined by the previous ifelse statement and or if the
  ## sample sd for d18O or d2H exceeds the maximum acceptable values
  
  if(slrm.o > slrm.o.max | slrm.o < slrm.o.min){warning("slrm d18O average out of range")}
  if(slrm.h > slrm.h.max | slrm.h < slrm.h.min){warning("slrm d2H average out of range")}
  if(slrm.o.sd > slrm.o.sd.max){warning("slrm d18O sd out of range")}
  if(slrm.h.sd > slrm.h.sd.max){warning("slrm d2H sd out of range")}
  ##generates warnings if parameters are violated
  
  if(any(data$ignore_sample == 1)){warning("sample values ignored")}
  ##generates warnings if sample values are to be ignored)
  
  return(data) 
}

#####################################################################
##                        qa.summary function                      ##
##           This function summarizes the qa metrics for           ##
##           the run                                               ##
#####################################################################

qa.summary <- function(data.file,qa.file,mem,drift,cal,flagged){
  ## data.file is the filename of a csv as described in the data.mod
  ## function
  ## qa.file is the filename of a csv as described in the cal.reg 
  ## function
  ## mem is a list created by the mc.terms function
  ## drift is a list created by the drift.reg function
  ## cal is a list created by the cal.reg function
  ## flagged is a dataframe created by the qa.flag function
  
  qa <- read.csv(qa.file,stringsAsFactors=FALSE) 
  ## reads in qa.file 
  
  slrm <- qa$ID[qa$parameter=="slrm"]
  ## creates a character string with the sampleID for slrm
  
  qa <- read.csv(qa.file,stringsAsFactors=FALSE) 
  ## reads in qa.file 
  
  slrm <- qa$ID[qa$parameter=="slrm"]
  ## creates a character string with the sampleID for slrm
  
  slrm.o <- mean(flagged$d18O_dc[flagged$ID==slrm],na.rm=T)
  ## calculates mean for slrm d18O
  
  slrm.h <- mean(flagged$d2H_dc[flagged$ID==slrm],na.rm=T)
  ## calculates mean for slrm d2H
  
  slrm.o.sd <- sd(flagged$d18O_dc[flagged$ID==slrm],na.rm=T)
  ## calculates sd for slrm d18O
  
  slrm.h.sd <- sd(flagged$d2H_dc[flagged$ID==slrm],na.rm=T)
  ## calculates sd for slrm d2H
  
  Instrument <- ifelse(grepl("HIDS[0-9]*",data.file),
                    regmatches(data.file,regexpr("HIDS[0-9]*", 
                                                 data.file)),NA)
  ## uses regular expressions to pull the instrument name out 
  ## of the file name
  
  Run_date <- ifelse(grepl("HIDS[0-9]*",data.file),
                     regmatches(data.file,regexpr("[0-9]{8}", 
                                                  data.file)),NA)
  ## uses regular expressions to pull the date out of the file name
  
  Run_date <- format(as.Date(Run_date,format="%Y%m%d"),"%m/%d/%y")
  ## changes the format of the date to mm/dd/yy
  
  summary <- data.frame(parameter = c("Instrument", "Run_date", "Memory1_O", 
                                      "Memory2_O", "Memory3_O", "Memory4_O", 
                                      "Drift_O", "Slope_O", "Intercept_O", 
                                      "Memory1_H", "Memory2_H", "Memory3_H", 
                                      "Memory4_H", "Drift_H", "Slope_H", 
                                      "Intercept_H",  "SLRM_O_mean", 
                                      "SLRM_H_mean", "SLRM_O_sd", "SLRM_H_sd",
                                      "SLRM_count", "Ignore"),
                           value = c(Instrument, Run_date, mem$o[1], mem$o[2], 
                                     mem$o[3],  mem$o[4], drift$o, cal$o.slope, 
                                     cal$o.int, mem$h[1], mem$h[2], mem$h[3],
                                     mem$h[4], drift$h, cal$h.slope, cal$h.int,
                                     slrm.o, slrm.h, slrm.o.sd, slrm.h.sd,
                                     nrow(flagged[flagged$ID==slrm,]),
                                     ifelse(flagged$ignore_run[1]==1,1,0)))
  summary$value <- as.character(summary$value)
#  summary$value[3:20] <- round(as.numeric(summary$value[3:20]),digits=3)
  ## creates a table with the summary data
  return(summary)
}

