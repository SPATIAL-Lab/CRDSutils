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

## Generates memory-correction terms for d18O & d2H 
mc.terms <- function(data){ 
  ## data is the dataframe created using the data.mod function
  ## ports is a vector with the port numbers to be used to calculate
  ## the memory-correction terms
  ## injs is a vector with the injections to calculate 
  ## memory-correction terms for
  
  #initial guesses
  n = seq(1:8)
  o.mc = exp(-n) / 8
  h.mc = exp(-n) / 3.5
  
  #ensure sorting by seqN
  data = data[order(data$seqN),]
  
  #numerical optimization for d18O
  o.mc.opt = optim(o.mc, mc.score, data = data, element = "O",
                   method = "L-BFGS-B", lower = 0)
  #check for convergence
  if(o.mc.opt$convergence != 0){
    warning("O memory correction did not converge")
  }
  
  #same for d2H
  h.mc.opt = optim(h.mc, mc.score, data = data, element = "H",
                   method = "L-BFGS-B", lower = 0)
  if(h.mc.opt$convergence != 0){
    warning("H memory correction did not converge")
  }

  #return only mc parameter values
  return(list(o.mc = o.mc.opt$par, h.mc = h.mc.opt$par))
}

## Scores the memory correction for use in optimization 
mc.score = function(mc, data, element){
  #run the correction using the current parameters
  data.mc = mc.corr(data, mc, element)
  
  #add the port numers to the memory corrected values
  data.mc = data.frame(Port = data$Port, mc = data.mc)
  
  #get sd values per port
  da = aggregate(data.mc[,"mc"], by = list(Port = data.mc$Port),
                 sd, na.rm = TRUE)
  
  #names for easy reference
  names(da) = c("Port", "SD")
  
  #return score is the variance of the deviations
  return(mean(da$SD, na.rm = TRUE))
}

## Conducts memory corretion for one element
mc.corr = function(data, mc, element){
  
  #ensure sorting by seqN
  data = data[order(data$seqN),]
  
  #extract uncorrected values for target element
  if(element == "O"){
    vals = data$d18O
  } else {
    vals = data$d2H
  }
  
  #storage for corrected values
  vals.mc = rep(NA, length(vals))
  
  #cycle through each injection, skipping conditioners
  for(i in 11:length(vals)){
    #correction term is the sum of preceeding peaks weighted
    #by mc parameters
    corr = sum(mc * vals[i:(i-length(mc)+1)])
    #weights scale to 1-true value weight
    wts = 1 - sum(mc)
    #make the correction
    vals.mc[i] = (vals[i] - corr) / wts
  }
  
  #return vector of corrected values
  return(vals.mc)
}

## calculates a calbiration regression for d18O and d2H based
## on plrm values
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

## Calibrates data for the specified element 
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

## Calculates drift regression lines for d18O and d2H
drift.reg <- function(data, qa.file, genPlot = TRUE){
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

## Drift-corrects data
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

## Detect outliers and return index for detections
outlier = function(data, oi.in){
  
  #get aggregated data by port
  da = collapse(data, oi.in)
  
  #merge aggregated values to full data
  data = merge(data, da, by.x = c("Port", "ID", "ID2"), 
               by.y = c("Port", "ID", "ID2"))
  
  #data minus current outliers
  data.ok = data[oi.in,]
  
  #differences between individual injections and averages
  data.ok$d18O_diff = data.ok$d18O_dc - data.ok$d18O_avg
  data.ok$d2H_diff = data.ok$d2H_dc - data.ok$d2H_avg
  
  #standard deviations of the differences
  O_diff.sd = sd(data.ok$d18O_diff, na.rm = TRUE)
  H_diff.sd = sd(data.ok$d2H_diff, na.rm = TRUE)
  
  #Z-scores for the differences
  data.ok$d18O_diff.Z = data.ok$d18O_diff / O_diff.sd
  data.ok$d2H_diff.Z = data.ok$d2H_diff / H_diff.sd
  
  #space to store row nums of outliers
  oi.o = oi.h = NULL
  
  #if any injection is a d18O outlier (beyond 3.5 SD)
  if(any(data.ok$d18O_diff.Z > 3.5 * O_diff.sd)){
    #store the row number for the most extreme outler
    oi.o = match(max(abs(data.ok$d18O_diff.Z)), 
                 abs(data.ok$d18O_diff.Z))
  }
  #same for d2H
  if(any(data.ok$d2H_diff.Z > 3.5 * H_diff.sd)){
    oi.h = match(max(abs(data.ok$d2H_diff.Z)), 
                 abs(data.ok$d2H_diff.Z))
  }
  
  # if any outliers are detected
  if(!is.null(oi.o) & !is.null(oi.h)){
    # plot the sequenc and the most extreme
    par(mar = c(5,5,1,5))
    plot(data.ok$seqN, data.ok$d18O_diff.Z, 
         pch=21, bg = "light blue",
         ylab = "", xlab = "Sequence number")
    points(data.ok$seqN[oi.o], data.ok$d18O_diff.Z[oi.o], pch=21,
           bg = "black", col = "light blue")
    mtext("d18O", 2, 3, col = "light blue")
    abline(3.5, 0, lty=2, col = "light blue")
    abline(-3.5, 0, lty=2, col = "light blue")
    par(new = TRUE)
    plot(data.ok$seqN, data.ok$d2H_diff.Z, 
         pch=21, bg = "red", axes = FALSE,
         ylab = "", xlab = "")
    points(data.ok$seqN[oi.h], data.ok$d2H_diff.Z[oi.h], pch=21,
           bg = "black", col = "red")
    axis(4)
    mtext("d2H", 4, 3, col = "red")
    abline(3.5, 0, lty=2, col = "red")
    abline(-3.5, 0, lty=2, col = "red")
    
    # prompt for removal
    rm = readline("Outlier detected - <Enter> to remove, 'N' to keep/end: ")
    
    # if analyst chooses to remove
    if(rm == ""){
      #generate vector showing samples(s) to be removed
      oi = data$seqN != data.ok$seqN[oi.o] & 
        data$seqN != data.ok$seqN[oi.h]
      #combine with previously removed samples
      oi = oi & oi.in
      return(oi)
    } else {
      return(0)
    }
  }
}

## Collapse multiple injection data to averages and standard errors
collapse = function(data, oi){
  #Average drift corrected isotope vals per port
  avg <- aggregate(data[oi,c("d18O_dc","d2H_dc")],
                   by=list(Port = data$Port[oi],
                           ID=data$ID[oi], ID2 = data$ID2[oi]),
                   mean, na.rm = TRUE)
  
  # Function for standard error of the mean
  sem = function(x){
    x = x[!is.na(x)]
    sd(x)/sqrt(length(x))
  }
  
  #standard error of isotope vals per port
  sterr <- aggregate(data[oi,c("d18O_dc","d2H_dc")],
                   by=list(Port = data$Port[oi],
                           ID=data$ID[oi], ID2 = data$ID2[oi]),
                   sem)

  names(avg)[4:5] = c("d18O_avg", "d2H_avg")
  names(sterr)[4:5] = c("d18O_sem", "d2H_sem")
  
  return(merge(avg, sterr, by=c("Port","ID","ID2")))
}

## Evaluates the mean and sd for slrm to determine if they are 
## within acceptable limits, as well as the sd for each port 
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

## Summarizes the qa metrics for the run
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

