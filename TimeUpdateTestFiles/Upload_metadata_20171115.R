

#0) set the environment timezone so it doesn't automatically correct from time-naive excel to it's assumed GMT time
Sys.setenv(TZ= "GMT")

#1) set values here
setwd("C:/Users/u0939524/Dropbox")   ### Sagarika Laptop
setwd("C:/Users/gjbowen/Dropbox")   ### GJB
fname = "C:/Users/u0929173/Documents/DatasetResources/RawFiles/WI_Template_timetest.xlsx"        ### name of data file, must use Spatial_WI template format
newproj = "N"                       ### set to "Y" if you want to auto-assign a new project ID, "N" otherwise

#2) run to compile functions
source("Bowen_Lab/R_scripts_active/Metadata_functions_20171115.R")

#3) run this if you want to review existing Projects
review.projects()

    #4) run only if replacing data in DB
# delete.metadata(fname)

#5) run to upload new data to DB
post.metadata(fname, newproj)
