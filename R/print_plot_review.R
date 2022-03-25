#Format the dataframes from process.crds for printing to the console
print_format <- function(data){
  ## data is a list of dataframes such as that created by the 
  ## process.crds function that includes qa.report & samples.summary
  
  qa.print <- data$qa.report
  ## stores the dataframe qa.report
  
  qa.print$value[3:20] <- round(as.numeric(qa.print$value[3:20]),3)
  ## rounds all of the numeric values in qa.print to 3 decimals
  
  samples.s <- data$samples.summary
  ## stores the dataframe samples.summary
  
  samples.s <- samples.s[,c("Port","ID","ID2","d18O_cm", "d2H_cm",
                            "d18O_csd","d2H_csd","ignore_run",
                            "ignore_sample")]
  ## subsets the dataframe to include only certain columns
  
  names(samples.s)[4:7] <- c("d18O", "d2H", "d18O SD", "d2H SD")
  ## renames columns 4 & 5
  
  samples.s[,4:7] <- round(samples.s[,4:7],2)
  ## rounds columns 4-7 to 2 decimal places
  
  #typecast Port to numeric and sort
  samples.s$Port = as.numeric(samples.s$Port)
  samples.s = samples.s[order(samples.s$Port),]
  
  return(list(qa = qa.print, samples.summary = samples.s))
}

#Plot sample results against GMWL for review
plot_gmwl <- function(data){
  ## data is a dataframe such as the samples.summary table created
  ## by the print.format function
  
  o <- range(data$d18O,na.rm=T)
  ## creates a vector with the minimum and maximum d18O values
  
  h.min = min(o[1] * 8 + 10, min(data$d2H, na.rm = TRUE))
  h.max = max(o[2] * 8 + 10, max(data$d2H, na.rm = TRUE))
  ## compares the GMWL values to the measured values to find min
  ## and max for plotting boundaries

  plot(data$d18O, data$d2H, 
       main = expression(delta^{2}*"H vs. "*delta^{18}*"O with GMWL"),
       xlim = o, ylim = c(h.min,h.max), 
       xlab = expression(delta^{18}*"O"), 
       ylab = expression(delta^{2}*"H"))
  abline(10, 8)
}

#Print data summaries for review by analyst
review_data <- function(data){
  ## data is a list of dataframes such as that created by the 
  ## process.crds function that includes qa.report & samples.summary
  
  print.me <- print_format(data)
  ## runs print.format function
  
  plot_gmwl(print.me$samples.summary)
  ## runs plot.gmwl function
  
  return(list(qa = print.me$qa,
              data = print.me$samples.summary))
}
