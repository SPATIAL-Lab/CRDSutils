#1) set values here
#Sys.setenv(TZ= "GMT")
setwd("C:/Users/gjbowen/Dropbox/Hypomirror/DPAA/Wells/USGS")                 

### name of excel data file in template format or "" for csv from iPhone
fname = "region12.xlsx"        

### set to "Y" if you want to auto-assign a new project ID, "N" otherwise
newproj = "N"     

#2) run to compile functions
source("C:/Users/gjbowen/Dropbox/Bowen_Lab/R_scripts_active/Metadata_functions.R")

#3) run this if you want to review existing Projects
#review.projects()

#4) run only if replacing data in DB
#delete.metadata(fname)

#5) run to upload new data to DB
post.metadata(fname, newproj)
