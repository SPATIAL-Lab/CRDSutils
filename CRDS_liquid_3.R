#####################################################################
####    	         CRDS Water Data Processing Script             ####
####          Each section should represent data processed  	   #### 
####				 for one date and one machine. At the bottom is      ####
####         a commented example of what each line does          ####
#####################################################################

setwd("C:/Users/gjbowen/Dropbox") # GJB Desktop

#####################################################################
## Copy this section and paste below to create a new entry, then   ##
## update run.date, machine, and working directory before running  ##
## the remaining lines one at a time                               ##
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- yymmdd # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- ''  # update, eg. 'hids2052'
setwd("") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = ""  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 181101 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181029 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181025 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181023 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181023 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181015 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181012 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 181012 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 181010 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181008 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181008 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181004 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 181001 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180928 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180926 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180924 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180921 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180919 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180917 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180914 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180912 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180912 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180910 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180910 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180907 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180907 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180907 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180831 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 180905 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180829 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180827 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180827 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180824 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180822 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 180822 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 180820 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180821 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180815 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180815 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180813 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180813 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180810 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180808 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180806 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180730 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180723 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel



#####################################################################
### comments - write any comments here
run.date <- 180725 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180719 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180717 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180716 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180711 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180709 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180705 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180702 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180621 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180619 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180615 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180612 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 180614 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180612 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 180608 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180606 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180606 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180604 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180531 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180529 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180524 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180518 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180515 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180516 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180522 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0133977/Dropbox") # update, e.g,. "C:/Users/u0989124/Dropbox/SPATIAL Lab"
analyst = "Sagarika Banerjee"  #update, e.g., "Sagarika Banerjee"

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected, analyst) # write to database
excel(files$ids.file,corrected) # write to excel
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 180509 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180507 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180501 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180427 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180425 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180423 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180419 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180416 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180412 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180409 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180402 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180330 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180320 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180314 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180228 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180222 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180216 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180213 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180131 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180129 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180126 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180122 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180122 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180119 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180108 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180108 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180105 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180104 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 180103 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171221 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 171221 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171220 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171220 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171214 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171215 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171213 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171212 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171211 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171211 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171206 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171204 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171130 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171128 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171120 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171121 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171117 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171115 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171115 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171113 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171113 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171110 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171107 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 171101 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171023 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171020 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################




#####################################################################
### comments - write any comments here
run.date <- 171020 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171017 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171017 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171010 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171013 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171014 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171009 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171004 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 171002 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170928 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170927 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170922 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170920 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170920 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170914 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170914 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170911 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170911 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170908 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170908 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170906 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170906 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170831 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170829 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170829 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170825 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170823 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170823 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170821 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170817 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170815 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170811 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170809 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170807 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170802 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170731 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170727 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170725 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170720 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170717 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170713 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170711 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170710 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170707 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170622 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170706 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170622 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170620 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170620 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170619 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170616 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170615 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170615 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170614 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170614 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170612 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170612 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170609 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170609 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170607 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170607 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170605 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170602 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170605 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170601 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170530 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170531 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170525 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170523 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170522 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170518 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################



#####################################################################
### comments - write any comments here
run.date <- 170516 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170511 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170511 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170509 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170509 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170504 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170502 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170501 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170428 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170424 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170427 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170421 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170419 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170419 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170417 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170417 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170413 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170413 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170411 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170411 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170408 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170406 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170406 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170401 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170403 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170403 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170329 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170329 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170327 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170323 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170323 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170320 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170320 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170317 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170317 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170315 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170315 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170313 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170310 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170224 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170228 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170224 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170221 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170222 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170219 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170221 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170219 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170213 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170213 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170210 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170210 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170109 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170130 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 170130 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170125 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170118 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170117 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170109 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 170106 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161222 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161220 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161220 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161215 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161214 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161214 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161206 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161212 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161209 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161202 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161201 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161129 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161121 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161118 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161117 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161112 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161115 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161110 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161107 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161107 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161104 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161104 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161102 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161101 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161027 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161027 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161024 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161021 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161020 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161012 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161012 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161006 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 161006 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161004 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 161004 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160930 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160930 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160927 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160927 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160922 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160922 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160914 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160920 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160916 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160914 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160912 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160912 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160907 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160909 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160909 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160907 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160902 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data

#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160905 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160905 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160902 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160831 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160829 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160829 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160825 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160822 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160819 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160815 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160817 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160815 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160527 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160609 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160726 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160727 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160724 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160720 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160712 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160712 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160707 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160702 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160630 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160628 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160623 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160614 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160614 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160609 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160609 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160607 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160606 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160603 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160603 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160601 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160527 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160523 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160523 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160517 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160517 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160512 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160512 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160510 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160509 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160509 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160504 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160502 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160429 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160428 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160419 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160425 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160425 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160419 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160411 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160411 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160407 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160422 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160407 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160404 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160404 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160330 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160330 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160322 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160322 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160314 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160314 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160311 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160311 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160225 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160212 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160210 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160209 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160208 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160203 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160203 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160111 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file

#####################################################################
### comments - write any comments here
run.date <- 160201 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160201 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160129 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160127 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160127 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160125 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160125 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160122 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160122 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160120 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160120 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160115 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160115 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160113 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160113 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160111 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160111 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160108 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160108 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160106 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160106 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 160104 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 160104 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 151208 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file

#####################################################################
### comments - write any comments here
run.date <- 151229 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151202 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file

#####################################################################
### comments - write any comments here
run.date <- 151125 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file

#####################################################################
### comments - write any comments here
run.date <- 151125 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file

#####################################################################
### comments - write any comments here
run.date <- 151123 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151120 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file

#####################################################################
### comments - write any comments here
run.date <- 151116 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 151120 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 151118 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151116 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151113 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151112 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151106 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151110 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 151105 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151103 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151028 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151029 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151026 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151021 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151023 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 151023 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 151016 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151019 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151016 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151014 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151012 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151009 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151009 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151005 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151005 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151001 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 151001 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################


#####################################################################
### comments - write any comments here
run.date <- 150928 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150928 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150924 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150922 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150921 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150917 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150918 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150911 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150904 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150826 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150820 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150827 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150818 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150813 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150810 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150806 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150807 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150805 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150804 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150722 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150722 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150720 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150717 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150713 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150713 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150713 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150709 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150624 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150624 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150619 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150616 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150616 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150611 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150611 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150608 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150608 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150604 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150601 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150529 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150522 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150520 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################



#####################################################################
### comments - write any comments here
run.date <- 150520 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150518 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150514 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150508 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150505 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150505 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150429 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150428 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("D:/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150427 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2052'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150427 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150424 # update, eg. 150310
## date on which a run was started, eg. 150310
machine <- 'hids2046'  # update, eg. 'hids2052'
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150314 # update, eg. 150310
machine <- 'hids2052' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150312 # update, eg. 150310
machine <- 'hids2052' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150310 # update, eg. 150310
machine <- 'hids2052' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150310 # update, eg. 150310
machine <- 'hids2046' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### comments - write any comments here
run.date <- 150305 # update, eg. 150310
machine <- 'hids2046' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### this is to re-process the data for the NEON runs with the new
### reference values and to generate the new spreadsheet format
run.date <- 150208 # update, eg. 150310
machine <- 'hids2052' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### this is to re-process the data for the NEON runs with the new
### reference values and to generate the new spreadsheet format
run.date <- 150204 # update, eg. 150310
machine <- 'hids2052' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### this is to re-process the data for the NEON runs with the new
### reference values and to generate the new spreadsheet format
run.date <- 150116 # update, eg. 150310
machine <- 'hids2052' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
### this is to re-process the data for the NEON runs with the new
### reference values and to generate the new spreadsheet format
run.date <- 150114 # update, eg. 150310
machine <- 'hids2052' # update, eg. 'hids2052'
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
files <- file.lookup(machine, run.date) # lookup file names
check.files(files) # check files
corrected <- process.data(files) # process data
review.data(corrected) # review data
db(corrected) # write to database
excel(files$ids.file,corrected) # write to excel file
#####################################################################

#####################################################################
## This describes what each line does in the sections above        ##
#####################################################################

run.date <- yymmdd # update, eg. 150310
## date on which a run was started

machine <- ''  # update, eg. 'hids2052'
## name of machine samples were run on

setwd("") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
## filepath for the local folder containing the Dropbox folder 
## 'Bowen_Lab', 'hids2046', 'hids2053', and 'hids2052'

source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
## loads all the functions stored in the file 'CRDS_liquid_2.R' which
## also calls all the functions stored in the file 'CRDS_liquid_1.R'

files <- file.lookup(machine, run.date) # lookup file names
## looks up the file names that contain the data and the sample ids 
## for the data to be processed. Check that the correct files 
## have been looked up

check.files(files) # check files
## checks the formatting of the files that were looked up. Examine
## the warnings that are printed and adjust files if needed.

corrected <- process.data(files) # process data
## reads in the data from the relevant files and corrects it, 
## summarizes it, and quality checks it. If any of the quality
## parameters are violated, a warning message will be printed

review.data(corrected) # review data
## prints the qa summary & data summary to the console and plots
## the data with the GMWL

db(corrected) # write to database
## writes the data to the WaterDB database in the Bowen_Lab
## Dropbox folder

excel(files$ids.file,corrected) # write to excel file
## writes an excel file with the corrected data and qa information 
## to the CRDS_liquidH2O folder in the Bowen_Lab Dropbox folder