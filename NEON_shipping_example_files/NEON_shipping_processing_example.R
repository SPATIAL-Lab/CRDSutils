#####################################################################
####            NEON shipping data processing                    ####
####           This file is used to upload NEON                  ####
####          shipping data to the WiDB database                 ####
#####################################################################

#####################################################################                                                        ##
##  Each line in this file records the uploading of data from      ##
##  a NEON shipping excel workbook. Copy the section at the top    ##
##  This is the blank template you will update to load data to     ##
##  the database. Update the working directory line (setwd)        ##
##  Your working directory should be the folder that contains      ##
##  the Dropbox folder "Bowen_Lab". Run the second line to         ##
##  load the function neon_shipment. Finally, update the           ##
##  neon_shipment function with the filename of the NEON excel     ##
##  workbook to be uploaded to the database.                       ##
#####################################################################

#####################################################################
setwd("") # update, eg. 
# "C:/Users/u0989124/Dropbox/SPATIAL Lab"
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
# load function
neon_shipment("")
# upload data to database
#####################################################################

#####################################################################
## 06/21/18
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/R_scripts_active/NEON_shipping_example_files/Example_Inputs/manifest_for_D0720180613061544217.csv")
#####################################################################
