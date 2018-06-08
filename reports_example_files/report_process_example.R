#####################################################################
####                       Report Process                        ####
####          Each section produces one or more reports          ####
####          for a group of samples. A description of each      ####
####          variable in the reports function is included       ####
####          at the bottom of this file.                        ####
#####################################################################

#####################################################################
## Copy this section and paste below to create a new entry, then   ##
## update the ID2 and date variables, job if relevant, and         ##
## report should be either "spatial", "sirfer", or "neon".         ##
## ID2 should match an identifier in the ID2 column of the         ##
## WaterDB database. Date should be a date before the first        ##
## run of samples, but after any other run of samples with the     ##
## same ID2 that should not be included in the report (i.e. if     ##
## they have already been reported). Next, update the runs         ##
## variable to TRUE if you want to print the machine and date for  ## 
## each run. Then, update the spatial, sirfer, or neon variable    ##
## to TRUE depending on which report is desired. Finally, update   ##
## ignore to FALSE if you want to include flagged data             ##
#####################################################################

#####################################################################
setwd("") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "", date = "", job = "", 
        report = "", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/kblevins/Dropbox/SPATIAL lab") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "SIRFER 14-217", date = "3/1/2015", job = "14-217", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/kblevins/Dropbox/SPATIAL lab") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Brenda/BSF brines", date = "3/1/2015", job = "", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/kblevins/Dropbox/SPATIAL lab") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "NEON_POSE", date = "11/1/2014", job = "", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
##  Arguments                                                      ##
##  ID2       an identifier used to identify a group of samples    ## 
##            in the database (character string,                   ##
##            e.g. "Precipitation")                                ##
##  date      starting date for the analysis of the samples to be  ## 
##            reported (as a character string, e.g. "1/1/2014)     ##
##  job       a SIRFER job number (character string,               ## 
##            e.g. "SIRFER 14-020")                                ##
##  report    one of these values : "spatial", "sirfer", or        ##
##            "neon". If spatial is specified the report is        ##
##            saved to Bowen_Lab/Data_reports. If sirfer is        ##
##            specified, the report is saved to                    ##
##            Bowen_Lab/Data_reports/SIRFER_SPATIAL. If neon       ##
##            is specified, the report is saved to                 ##
##            Bowen_Lab/Data_reports/NEON                          ##
##  runs      a logical value indicating whether to print the      ##
##            machine SN and date for each run in which samples    ##
##            were analyzed                                        ##
##  ignore    a logical value indicating whether to include        ##
##            flagged data; default is TRUE                        ##
#####################################################################
