#1) set values here
#Sys.setenv(TZ= "GMT")
setwd("C:/Users/u0133977/Dropbox/Bowen_Lab/Sample_metadata/19-248")                 

### name of excel data file in template format or "" for csv from iPhone
fname = ""        

### set to "Y" if you want to auto-assign a new project ID, "N" otherwise
newproj = "N"   

### set value if you want to append a uniform sample ID prefix, e.g. SIRFER job number
### use "" if none
prefix = "19-248"

#2) run to compile functions
source("C:/Users/u0133977/Dropbox/Bowen_Lab/R_scripts_active/Metadata_functions.R")

#3) run this if you want to review existing Projects
#review.projects()

#4) run only if replacing data in DB
#delete.metadata(fname)

#5) run to upload new data to DB
post.metadata(fname, newproj, prefix)

