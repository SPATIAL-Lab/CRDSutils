#####################################################################
####            NEON shipping data processing                    ####
####           This file is used to upload NEON                  ####
####          shipping data to the WaterDB Access                ####
####          database                                           ####
#####################################################################

#####################################################################                                                        ##
##  each line is the uploading of data from a NEON shipping        ##
##  excel workbook                                                 ##
#####################################################################

setwd("C:/Users/u0989124/Dropbox/SPATIAL lab")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")

#####################################################################

## 12/19/14
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20141217.xlsx")