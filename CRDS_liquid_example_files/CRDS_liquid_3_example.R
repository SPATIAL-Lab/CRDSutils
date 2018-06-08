#####################################################################
####    	         CRDS Water Data Processing Script             ####
####          Each section should represent data processed  	   #### 
####				 for one date and one machine. At the bottom is      ####
####         a commented example of what each line does          ####
#####################################################################

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
setwd("") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_Lab/R_scripts_active/CRDS_liquid_2.R") # load functions
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