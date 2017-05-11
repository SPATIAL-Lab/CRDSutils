#####################################################################
####            NEON shipping data processing                    ####
####           This file is used to upload NEON                  ####
####          shipping data to the WaterDB Access                ####
####          database                                           ####
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
################################################################

#####################################################################
## 04/27/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D11_ASI_ShippingInventory_20170310.xlsx")
#####################################################################

#####################################################################
## 04/27/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D03_ASI_ShippingInventory_20170420.xlsx")
#####################################################################

#####################################################################
## 04/25/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20170420.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D11_ASI_ShippingInventory_20170310.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_H2O_ShippingInv_20170403.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D01_ASI_H2O_ShippingInventory_20170330.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI.H2O_ShippingInventory_20170321.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D09_ASI_ShippingInventory_20170322.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D05_ASI_ShippingInventory_20170404 H2O.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20170328.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/NEON_D18_ASI_H2O_20170307.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D15_ASI_ShippingInventory_20170410_1of2.xlsx")
#####################################################################

#####################################################################
## 04/17/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20170329.xlsx")
#####################################################################


#####################################################################
## 03/06/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D01_ASI_ShippingInventory_20170222.xlsx")
#####################################################################

#####################################################################
## 02/22/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/NEON_D18_ASI_H2O_20170207.xlsx")
#####################################################################

#####################################################################
## 03/06/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20170228.xlsx")
#####################################################################

#####################################################################
## 03/10/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_h2o_ShippingInventory_20170301.xlsx")
#####################################################################

#####################################################################
## 03/10/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20170301.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI.H2O_ShippingInventory_20170214.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D08-AOS_ShippingInventory_MAYF_BLWA_TOMB_ASI_H20_20170206.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D03_ASI_ShippingInventory_20170202.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_h2o_ShippingInventory_20170125.xlsx")
#####################################################################


#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20170125.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D03_ASI_ShippingInventory_20160119.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D05_ASI_ShippingInventory_20170109 H2O.xlsx")
#####################################################################


#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D08-AOS_ShippingInventory_MAYF_BLWA_TOMB_ASI_H20_20170116.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D09_ASI_H20_ShippingInventory_20170118.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20170110.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/NEON_D18_ASI_H2O_20161206.xlsx")
#####################################################################

#####################################################################
## 02/08/17
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D01_ASI_ShippingInventory_20170201.xlsx")
#####################################################################


#####################################################################
## 01/24/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D15_AOS_ASI_H2O_20170116.xlsx")
#####################################################################

#####################################################################
## 02/08/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/NEON_D18_ASI_H2O_20170110.xlsx")
#####################################################################

#####################################################################
## 12/22/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI_ShippingInventory_201601220.xlsx")
#####################################################################

#####################################################################
## 12/22/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20161213.xlsx")
#####################################################################

#####################################################################
## 12/22/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D01_ASI_ShippingInventory_20161214.xlsx")
#####################################################################

#####################################################################
## 12/22/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_h2o_ShippingInventory_20161215.xlsx")
#####################################################################


#####################################################################
## 12/09/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_sent_20161129.xlsx")
#####################################################################


#####################################################################
## 12/09/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20161130.xlsx")
#####################################################################

#####################################################################
## 12/08/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI_ShippingInventory_201601201.xlsx")
#####################################################################


#####################################################################
## 12/08/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D08-AOS_ShippingInventory_MAYF_BLWA_TOMB_ASI_H20_20161128.xlsx")
#####################################################################

#####################################################################
## 12/09/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D01_ASI_ShippingInventory_20161118.xlsx")
#####################################################################


#####################################################################
## 12/09/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/NEON_D18_ASI_H2O_20161107.xlsx")
#####################################################################

#####################################################################
## 11/15/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_h2o_ShippingInventory_20161025.xlsx")
#####################################################################


#####################################################################
## 11/15/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D01_ASI_ShippingInventory_20161104.xlsx")
#####################################################################

#####################################################################
## 11/15/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D15_AOS shipping inventory_ASI_H2O_persamp 20161108.xlsx")
#####################################################################


#####################################################################
## 11/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/NEON_D1819_ASI_H2O_20161025.xlsx")
#####################################################################

#####################################################################
## 11/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D11_ASI_ShippingInventory_PRIN_20161104.xlsx")
#####################################################################

#####################################################################
## 11/03/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D09_ASI_H20_ShippingInventory_20161027.xlsx")
#####################################################################


#####################################################################
## 10/28/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D03_ASI_ShippingInventory_20161019.xlsx")
#####################################################################

#####################################################################
## 10/27/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20161024.xlsx")
#####################################################################

#####################################################################
## 10/27/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20161019.xlsx")
#####################################################################

#####################################################################
## 9/7/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D03_ASI_ShippingInventory_20160816.xlsx")
#####################################################################

#####################################################################
## 10/18/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI_ShippingInventory_201601011.xlsx")
#####################################################################

#####################################################################
## 10/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D06 ASI H2O Vials Shipping Inventory 20161004.xlsx")
#####################################################################


#####################################################################
## 10/11/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D08-AOS_ShippingInventory_MAYF_ASI_H20_20160928.xlsx")
#####################################################################

#####################################################################
## 10/07/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D01_ASI_ShippingInventory_20160927.xlsx")
#####################################################################


#####################################################################
## 09/06/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_H2O_ShippingInventory_20160825.xlsx")
#####################################################################

#####################################################################
## 10/05/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_h2o_ShippingInventory_20160920.xlsx")
#####################################################################


#####################################################################
## 10/06/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D11_ASI_ShippingInventory_PRIN_20160908.xlsx")
#####################################################################

#####################################################################
## 10/06/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20160926.xlsx")
#####################################################################

#####################################################################
## 10/03/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI_ShippingInventory_20160921.xlsx")
#####################################################################

#####################################################################
## 09/09/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI_ShippingInventory_20160830_toImport.xlsx")
#####################################################################

#####################################################################
## 09/06/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_H2O_ShippingInventory_20160825.xlsx")
#####################################################################

#####################################################################
## 09/15/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D18_19_CARI, TOOk, OKSR_Isotopes_2016.xlsx")
#####################################################################

#####################################################################
## 09/15/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D18_19_CARI, TOOk, OKSR_Isotopes_2016.xlsx")
#####################################################################

#####################################################################
## 09/07/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20160831.xlsx")
#####################################################################

#####################################################################
## 09/07/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D10D13_ASI_H2O_ShippingInventory_20160831.xlsx")
###################################################################

#####################################################################
## 08/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D05_ASI_ShippingInventory_20160706.xlsx")
###################################################################

#####################################################################
## 09/16/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI_ShippingInventory_20160830_toImport.xlsx")
#####################################################################

#####################################################################
## 09/06/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_H2O_ShippingInventory_20160825.xlsx")
#####################################################################

#####################################################################
## 09/07/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D03_ASI_ShippingInventory_20160816.xlsx")
#####################################################################


#####################################################################
## 09/09/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20160824.xlsx")
#####################################################################

#####################################################################
## 09/15/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D18_19_CARI, TOOk, OKSR_Isotopes_2016.xlsx")
#####################################################################

#####################################################################
## 09/07/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D03_ASI_ShippingInventory_20160816.xlsx")
#####################################################################

#####################################################################
## 08/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D04_ASI_ShippingInventory_20160721.xlsx")
#####################################################################

#####################################################################
## 08/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_ShippingInventory_20160719.xlsx")
#####################################################################

#####################################################################
## 09/07/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D07_ASI_ShippingInventory_20160725.xlsx")
#####################################################################

#####################################################################
## 8/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D06_ASI_ShippingInventory_20160715.xlsx")
#####################################################################

#####################################################################
## 8/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D09_ASI_ShippingInventory_20160702.xlsx")
#####################################################################

#####################################################################
## 8/10/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/NEON_D10_D13_sample_shipping_inventory_ASI_H2O_sent_20160801.xlsx")
#####################################################################

#####################################################################
## 7/8/16
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D08-AOS_ShippingInventory_20160623_ASI_H2O.xlsx")
#####################################################################


#####################################################################
## 12/29/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20151215.xlsx")
#####################################################################

#####################################################################
## 11/19/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20151112.xlsx")
#####################################################################

#####################################################################
## 10/26/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20151020.xlsx")
#####################################################################

#####################################################################
## 10/20/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20151012.xlsx")
#####################################################################


#####################################################################
## 9/22/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150915.xlsx")
#####################################################################


#####################################################################
## 8/31/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150825.xlsx")
#####################################################################

#####################################################################
## 8/6/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150729.xlsx")
#####################################################################

#####################################################################
## 6/23/15
setwd("C:/Users/u0939524/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150616.xlsx")
#####################################################################

#####################################################################
## 6/09/15
setwd("C:/Users/gjbowen/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150528.xlsx")
#####################################################################

#####################################################################
## 4/28/15
setwd("C:/Users/gjbowen/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150421.xlsx")
#####################################################################

#####################################################################
## 4/6/15
setwd("C:/Users/gjbowen/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150324.xlsx")
#####################################################################

#####################################################################
## 3/27/15
setwd("C:/Users/gjbowen/Dropbox")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D08-AOS_ShippingInventory_20150317_ASI_H2O.xlsx")
#####################################################################

#####################################################################
## 3/3/15
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150226.xlsx")
#####################################################################

#####################################################################
## 2/3/15
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20150128.xlsx")
#####################################################################

#####################################################################
## 12/19/14
setwd("C:/Users/kblevins/Dropbox/SPATIAL Lab")
source("Bowen_lab/R_scripts_active/NEON_shipping_function.R")
neon_shipment("Bowen_Lab/Data_reports/NEON/Shipping/D02_ASI_UtahGeo_20141217.xlsx")
#####################################################################