par.query = function(criteria){
  
  library(RODBC)
  ## loads RODBC library
  
  channel = odbcConnect("WIDB")
  ## creates a connection to the database, must be loaded as ODBC source w/ this name
  
  if(criteria$instrument == "all"){
    par = sqlQuery(channel, paste0("SELECT * FROM Parameters_table WHERE Run_date >= '", criteria$min.date,
                                   "' AND Run_date <= '", criteria$max.date,
                                   "' AND Ignore_run != ", criteria$ignore))
  } else {
    par = sqlQuery(channel, paste0("SELECT * FROM Parameters_table WHERE Instrument ='", criteria$instrument, 
                                 "' AND Run_date >= '", criteria$min.date, "' AND Run_date <= '", criteria$max.date,
                                 "' AND Ignore_run != ", criteria$ignore))
  }
  
  close(channel)
  par.good = subset(par, par$Ignore_run == 0)
  
  #Plot H memory   
  plot(par$Run_date, par$Memory1_H, ylim=c(0, max(par$Memory1_H)+0.01), col="red", xlab="Run Date", ylab="H memory")
  points(par.good$Run_date, par.good$Memory1_H, pch=16, col="red")
  points(par$Run_date, par$Memory2_H, col="orange")
  points(par.good$Run_date, par.good$Memory2_H, pch=16, col="orange")
  points(par$Run_date, par$Memory3_H, col="dark green")
  points(par.good$Run_date, par.good$Memory3_H, pch=16, col="dark green")
  points(par$Run_date, par$Memory4_H, col="blue")
  points(par.good$Run_date, par.good$Memory4_H, pch=16, col="blue")
  
  #Plot O memory   
  plot(par$Run_date, par$Memory1_O, ylim=c(0, max(par$Memory1_O)+0.01), col="red", xlab="Run Date", ylab="O memory")
  points(par.good$Run_date, par.good$Memory1_O, pch=16, col="red")
  points(par$Run_date, par$Memory2_O, col="orange")
  points(par.good$Run_date, par.good$Memory2_O, pch=16, col="orange")
  points(par$Run_date, par$Memory3_O, col="dark green")
  points(par.good$Run_date, par.good$Memory3_O, pch=16, col="dark green")
  points(par$Run_date, par$Memory4_O, col="blue")
  points(par.good$Run_date, par.good$Memory4_O, pch=16, col="blue")
  
  #Plot slope/intercepts   
  par(mar=c(5,4,4,5)+0.1)
  plot(par$Run_date, par$Slope_O, ylim=c(0.9, 1.1), col="dark green", xlab="Run Date", ylab="slope")
  points(par.good$Run_date, par.good$Slope_O, pch=16, col="dark green")
  points(par$Run_date, par$Slope_H, col="blue")
  points(par.good$Run_date, par.good$Slope_H, pch=16, col="blue")
  par(new=TRUE)
  plot(par$Run_date, par$Intercept_O, ylim=c(min(par$Intercept_H, par$Intercept_O), max(par$Intercept_H, par$Intercept_O)), col="green", xaxt="n", yaxt="n", xlab="", ylab="")
  points(par.good$Run_date, par.good$Intercept_O, pch=16, col="green")
  points(par$Run_date, par$Intercept_H, col="light blue")
  points(par.good$Run_date, par.good$Intercept_H, pch=16, col="light blue")
  axis(4)
  mtext("intercept", side=4, line=3)
  legend("bottomleft", legend=c("green = O, blue = H"))
  
  #Plot slrm values
  plot(par$Run_date, par$PT_O_ave, ylim=c(min(par$PT_O_ave), max(par$PT_O_ave)), col="dark green", xlab="Run Date", ylab="SRM d18O")
  points(par.good$Run_date, par.good$PT_O_ave, pch=16, col="dark green")
  par(new=TRUE)
  plot(par$Run_date, par$PT_H_ave, ylim=c(min(par$PT_H_ave), max(par$PT_H_ave)), col="blue", xaxt="n", yaxt="n", xlab="", ylab="")
  points(par.good$Run_date, par.good$PT_H_ave, pch=16, col="blue")
  axis(4)
  mtext("SRM d2H", side=4, line=3)
  legend("bottomleft", legend=c("green = O, blue = H"))
  
  #Plot slrm SDs
  plot(par$Run_date, par$PT_O_sd, ylim=c(min(par$PT_O_sd), max(par$PT_O_sd)), col="dark green", xlab="Run Date", ylab="SRM d18O SD")
  points(par.good$Run_date, par.good$PT_O_sd, pch=16, col="dark green")
  par(new=TRUE)
  plot(par$Run_date, par$PT_H_sd, ylim=c(min(par$PT_H_sd), max(par$PT_H_sd)), col="blue", xaxt="n", yaxt="n", xlab="", ylab="")
  points(par.good$Run_date, par.good$PT_H_sd, pch=16, col="blue")
  axis(4)
  mtext("SRM d2H SD", side=4, line=3)
  legend("bottomleft", legend=c("green = O, blue = H"))
  
  par.sum = sapply(par.good[,4:(ncol(par.good)-1)], mean)
  par.sum = rbind(par.sum, sapply(par.good[,4:(ncol(par.good)-1)], sd))
  par.sum = rbind(par.sum, rep(0,ncol(par.sum)))
  par.sum[3,1:16] = par.sum[2,1:16]/par.sum[1,1:16]
  rownames(par.sum) = c("Mean", "SD", "RSD")
  View(par.sum)
  
  if(criteria$ignore == 2){
    good = nrow(par.good)/nrow(par)
    goodtxt = paste("Total number of runs =", nrow(par), "| % good =", round(good*100, 1))
    goodtxt
  }

}