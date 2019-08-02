#####################################################################
####           CRDS Paraneter Analysis Functions                 ####
####      This file allows user to extract instrument            ####
####      parameters from SpatialWI database and makes a         ####
####      series of plots for analysis of parameter values       ####
#####################################################################

####MODIFY VALUES TO EXTRACT DESIRED DATA####
setwd("C:/Users/u0939524/Dropbox")
instrument = "HIDS2052"  ##Instrument name or 'all' for all
min.date = "11/01/18"
max.date = "4/01/19"
ignore = 1  ##USE 1 FOR ONLY GOOD RUNS, 2 FOR ALL RUNS

####THEN RUN THE FOLLOWING####
source("Bowen_Lab/R_scripts_active/Parameters_functions.R")
min.date = as.Date(min.date, format = "%m/%d/%y")
max.date = as.Date(max.date, format = "%m/%d/%y")
criteria = data.frame(instrument, min.date, max.date, ignore)
par.query(criteria)
