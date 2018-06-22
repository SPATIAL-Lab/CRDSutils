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
## each run. Finally, update                                       ##
## ignore to FALSE if you want to include flagged data             ##
#####################################################################

#####################################################################
setwd("") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "", date = "", job = "", 
        report = "", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-182", date = "06/01/2018", job = "18-182", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-183", date = "06/05/2018", job = "18-183", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "ISOCOKE18", date = "06/12/2018", job = "ISOCOKE18", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "ISOCAMP18", date = "06/10/2018", job = "ISOCAMP18", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-176", date = "05/20/2018", job = "18-176", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-177", date = "05/20/2018", job = "18-177", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-184", date = "05/20/2018", job = "18-184", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-178", date = "05/26/2018", job = "18-178", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-171", date = "05/20/2018", job = "18-171", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-125", date = "05/20/2018", job = "18-125", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-170", date = "05/20/2018", job = "18-170", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-159", date = "04/30/2018", job = "18-159", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-154", date = "04/30/2018", job = "18-154", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-164", date = "05/01/2017", job = "18-164", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-141", date = "09/10/2017", job = "18-141", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-138", date = "09/10/2017", job = "18-138", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-151", date = "09/10/2017", job = "18-151", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "rich18", date = "09/10/2017", job = "rich18", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-137", date = "09/10/2017", job = "18-137", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-142", date = "09/10/2017", job = "18-142", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)




#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-134", date = "09/10/2017", job = "18-134", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Neon Ref Water", date = "09/10/2017", job = "Neon Ref Water", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-119", date = "09/10/2017", job = "18-119", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-122", date = "09/10/2017", job = "18-122", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-120", date = "09/10/2017", job = "18-120", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-113", date = "09/10/2017", job = "18-113", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-101", date = "09/10/2017", job = "18-101", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-108", date = "09/10/2017", job = "18-108", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-107", date = "09/10/2017", job = "18-107", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "SnoSciCl", date = "02/10/2018", job = "ANNIE", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-103", date = "09/10/2017", job = "18-103", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-100", date = "03/11/2017", job = "18-100", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-056", date = "09/10/2017", job = "18-056", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-027", date = "09/10/2017", job = "18-027", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-042", date = "09/10/2017", job = "18-042", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-046", date = "09/10/2017", job = "18-046", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "SnoSciCl", date = "09/10/2017", job = "SnowScience", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-024", date = "09/10/2017", job = "18-024", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-023", date = "09/10/2017", job = "18-023", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-002", date = "11/03/2017", job = "18-002", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-018", date = "12/03/2017", job = "18-018", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-022", date = "12/03/2017", job = "18-022", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-010", date = "12/03/2017", job = "18-010", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-001", date = "12/03/2017", job = "18-001", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-251", date = "1/03/2018", job = "17-251", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "18-005", date = "12/1/2017", job = "18-005", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-270", date = "12/1/2017", job = "17-270", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-285", date = "12/1/2017", job = "17-285", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-283", date = "12/1/2017", job = "17-283", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-281", date = "12/1/2017", job = "17-281", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-282", date = "12/1/2017", job = "17-282", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-281", date = "12/1/2017", job = "17-281", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-276", date = "7/1/2017", job = "17-276", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-275", date = "7/1/2017", job = "17-275", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-239", date = "9/1/2017", job = "17-239", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-276", date = "9/1/2017", job = "17-276", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-275", date = "11/1/2017", job = "17-275", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-267", date = "11/1/2017", job = "17-267", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-271", date = "12/2/2017", job = "17-271", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-264", date = "12/10/2017", job = "17-264", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-265", date = "09/27/2017", job = "17-265", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "RF", date = "11/27/2017", job = "RICH", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-268", date = "09/10/2017", job = "17-268", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-264", date = "11/27/2017", job = "17-264", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-258", date = "11/27/2017", job = "17-258", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-258", date = "09/10/2017", job = "17-258", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-191", date = "09/10/2017", job = "17-191", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-261", date = "09/10/2017", job = "17-261", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-253", date = "09/10/2017", job = "17-253", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-243", date = "09/10/2017", job = "17-243", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-251", date = "09/10/2017", job = "17-251", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-238", date = "11/10/2017", job = "17-238", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-249", date = "9/19/2017", job = "17-249", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-250", date = "9/19/2017", job = "17-250", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-244", date = "9/19/2017", job = "17-244", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-221", date = "9/19/2017", job = "17-221", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-238", date = "9/19/2017", job = "17-238", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-237", date = "9/19/2017", job = "17-237", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-225", date = "9/19/2017", job = "17-225", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-219", date = "9/19/2017", job = "17-219", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-173", date = "9/19/2017", job = "17-173", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-210", date = "10/19/2017", job = "17-210", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-220", date = "10/10/2017", job = "17-220", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-210", date = "10/15/2017", job = "17-210", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-217", date = "08/10/2017", job = "17-217", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-210", date = "08/10/2017", job = "17-210", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-209", date = "08/10/2017", job = "17-209", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-208", date = "08/10/2017", job = "WALK MCRA LEWI POSE CPER REDB", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-207", date = "08/10/2017", job = "17-207", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-162", date = "08/10/2017", job = "17-162", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "TEST1", date = "09/10/2017", job = "TEST1", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-205", date = "09/10/2017", job = "17-205", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-204", date = "09/10/2017", job = "17-204", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-201", date = "09/10/2017", job = "17-201", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-201", date = "09/10/2017", job = "17-201", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-200", date = "09/10/2017", job = "17-200", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-199", date = "09/10/2017", job = "17-199", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-198", date = "09/10/2017", job = "OSBS LECO WALK MCRA HOPB BLWA TOMB MAYF POSE LEWI OKSR CARI PRPO PRLA GUIL CUPE SYCA ARIK WLOU CPER", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-196", date = "08/10/2017", job = "17-196", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-118", date = "08/10/2017", job = "17-118", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-176", date = "08/10/2017", job = "17-176", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-197", date = "08/10/2017", job = "17-197", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)



#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-193", date = "08/10/2017", job = "MAYF BLWA TOMB CARI OKSR TOOK ARIK COMO WLOU BARC SUGG FLNT", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-185", date = "07/10/2017", job = "17-185", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-171", date = "07/10/2017", job = "17-171", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-147", date = "07/10/2017", job = "17-147", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-188", date = "07/10/2017", job = "17-188", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-186", date = "07/10/2017", job = "REDB CARI OKSR TOOK SYCA LECO WALK ARIK COMO WLOU OSBS GUIL CUPE CPER", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-160", date = "04/10/2017", job = "17-160", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-183", date = "04/10/2017", job = "17-183", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-181", date = "04/10/2017", job = "BLWA TOMB MAYF BARC SUGG FLNT POSE LEWI MCRA", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)




#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-180", date = "04/10/2017", job = "LIRO CRAM ARIK COMO WLOU", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-178", date = "04/10/2017", job = "17-178", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-175", date = "04/10/2017", job = "OSBS PRIN BLUE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-174", date = "04/10/2017", job = "PRPO PRLA HOPB REDB", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)



#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-138", date = "04/10/2017", job = "17-138", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-136", date = "04/10/2017", job = "17-136", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-151", date = "04/10/2017", job = "17-151", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-168", date = "05/20/2017", job = "HOPB REDB COMO WLOU", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-168", date = "05/01/2017", job = "HOPB REDB COMO WLOU", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-167", date = "05/20/2017", job = "KING MCDI GUIL CUPE WALK LECO", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-159", date = "05/10/2017", job = "17-159", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-156", date = "05/20/2017", job = "TOMB BLWA MCRA CUPE GUIL CARI OKSR TOOK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-132", date = "06/10/2017", job = "17-132", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-155", date = "04/20/2017", job = "MAYF BLWA TOMB ARIK COMO WLOU BARC SUGG FLNT", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-154", date = "04/20/2017", job = "POSE HOPB LEWI MAYF BLWA TOMB CARI OKSR ARIK WLOU COMO", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "ISO17", date = "05/10/2017", job = "ISO17", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "ISOCOKE17", date = "05/10/2017", job = "ISOCOKE17", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-150", date = "04/10/2017", job = "17-150", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "group3", date = "04/10/2017", job = "ISO2017", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-146", date = "04/20/2017", job = "REDB WALK LECO LIRO CRAM", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "ISOCAMP17", date = "04/10/2017", job = "ISOCAMP2017", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-150", date = "04/10/2017", job = "17-150", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-132", date = "04/10/2017", job = "17-132", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-129", date = "04/10/2017", job = "17-129", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-131", date = "05/10/2017", job = "17-131", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-363", date = "05/10/2017", job = "17-363", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-362", date = "05/10/2017", job = "17-362", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-135", date = "05/10/2017", job = "17-135", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-120", date = "05/10/2017", job = "17-120", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-128", date = "05/20/2017", job = "MAYF BLWA TOMB HOPB PRPO PRLA", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-127", date = "05/15/2017", job = "GUIL CUPE POSE LEWI TOOK BARC SUGGFLNT KING MCDI", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-111", date = "05/16/2017", job = "17-111", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-067", date = "01/10/2017", job = "17-067", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-119", date = "01/10/2017", job = "17-119", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-111", date = "01/10/2017", job = "17-111", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-048", date = "01/10/2017", job = "17-048", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-109", date = "04/20/2017", job = "17-109", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-107", date = "04/20/2017", job = "17-107", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-106", date = "04/01/2017", job = "17-106", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-098", date = "04/15/2017", job = "ARIK COMO BARC SUGG FLNT PRIN BLUE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-085", date = "04/01/2017", job = "ARIK BARC BLWA COMO FLNT MAYF REDB SUGG TOMB TOOK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-079", date = "04/01/2017", job = "17-079", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-090", date = "04/01/2017", job = "17-090", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Navajo Nation 2017", date = "02/19/2017", job = "NN2017", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "02/09/2017", job = "NN 2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-080", date = "04/01/2017", job = "17-080", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-086", date = "04/01/2017", job = "POSE LEWI WALK LECO CRAM CUPE GUIL HOPB PRPO PRLA KING MCDI", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-080", date = "04/01/2017", job = "17-080", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-082", date = "04/01/2017", job = "17-082", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-081", date = "04/01/2017", job = "17-081", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-065", date = "04/01/2017", job = "17-065", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-012", date = "02/01/2017", job = "17-012", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-016", date = "02/01/2017", job = "17-016", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-040", date = "02/01/2017", job = "17-040", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-034", date = "02/01/2017", job = "17-034", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-068", date = "02/01/2017", job = "17-068", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-077", date = "02/01/2017", job = "17-077", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-041", date = "02/01/2017", job = "17-041", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)



#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-053", date = "02/01/2017", job = "17-053", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-054", date = "02/02/2017", job = "HOPB ARIK COMO TOOK POSE LEWI LECO WALK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-014", date = "12/01/2016", job = "17-014", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-016", date = "03/20/2017", job = "17-016", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-015", date = "03/20/2017", job = "17-015", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-014", date = "12/01/2016", job = "17-014", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-012", date = "03/10/2017", job = "17-012", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-032", date = "02/21/2017", job = "17-032", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-024", date = "02/21/2017", job = "17-024", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-026", date = "02/02/2017", job = "HOPB ARIK COMO REDB TOOK PRPO PRLA", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-039", date = "02/15/2017", job = "TOMB BLWA POSE LEWI CUPE GUIL WALK LECO SUGG BARC MAYF", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-027", date = "02/21/2017", job = "17-027", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-033", date = "02/21/2017", job = "17-033", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-025", date = "01/02/2017", job = "TOMB BLWA CRAM SUGG BARC MAYF", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "01/20/2017", job = "NN 2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-029", date = "01/30/2017", job = "17-029", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-017", date = "01/30/2017", job = "17-017", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-379", date = "12/02/2016", job = "CUPE GUIL POSE LEWI LECO WALK HOPB", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-363", date = "12/02/2016", job = "16-363", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "17-013", date = "12/02/2016", job = "17-013", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-367", date = "12/02/2016", job = "16-367", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-366", date = "12/02/2016", job = "16-366", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-373", date = "01/06/2017", job = "16-373", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-372", date = "01/06/2017", job = "16-372", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-374", date = "12/20/2016", job = "16-374", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-371", date = "12/01/2016", job = "HOPB POSE LEWI ARIK COMO TOOK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-370", date = "12/01/2016", job = "CUPE GUIL MAYF BLWA TOMB", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-366", date = "12/01/2016", job = "16-366", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "ISOCOKE", date = "12/10/2016", job = "ISOCOKE", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "11/25/2016", job = "NN2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-328", date = "12/05/2016", job = "16-328", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-288", date = "11/25/2016", job = "16-288", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-262", date = "11/15/2016", job = "16-262", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-320", date = "11/10/2016", job = "16-320", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "11/20/2016", job = "NN2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-353", date = "11/10/2016", job = "HOPB PRIN WALK LECO OKSR CARI TOOK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-354", date = "11/10/2016", job = "REDB PRPO PRLA", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-362", date = "11/10/2016", job = "16-362", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-355", date = "10/10/2016", job = "16-355", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-323", date = "10/10/2016", job = "16-323", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-264", date = "8/5/2016", job = "16-264", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-336", date = "10/25/2016", job = "COMO ARIK POSE LEWI BARC SUGG", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-337", date = "10/25/2016", job = "BARC SUGG", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-262", date = "10/25/2016", job = "16-262", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-301", date = "10/25/2016", job = "16-301", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-301", date = "10/12/2016", job = "16-301", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-262", date = "10/20/2016", job = "16-262", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-298", date = "10/15/2016", job = "16-298", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-317", date = "10/15/2016", job = "KING MCDI", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-301", date = "9/25/2016", job = "16-301", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "10/11/2016", job = "NN2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-309", date = "09/30/2016", job = "MAYF HOPB", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-308", date = "09/30/2016", job = "CUPE GUIL COMO ARIK PRIN", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-307", date = "09/30/2016", job = "LECO WALK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "09/15/2016", job = "NN2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-297", date = "09/30/2016", job = "16-297", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-293", date = "09/25/2016", job = "TOOK OKSR CARI", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-292", date = "09/25/2016", job = "ARIK COMO", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-291", date = "09/25/2016", job = "POSE CUPE GUIL", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-290", date = "09/30/2016", job = "16-290", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-296", date = "09/30/2016", job = "16-296", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-281", date = "09/14/2016", job = "16-281", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-285", date = "09/25/2016", job = "16-285", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-275", date = "09/20/2016", job = "16-275", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-276", date = "09/20/2016", job = "16-276", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-273", date = "09/10/2016", job = "16-273", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-256", date = "09/10/2016", job = "16-256", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-255", date = "09/18/2016", job = "16-255", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-279", date = "7/15/2016", job = "COMO ARIK PRPO CRAM CUPE GUIL KING LECO MAYF POSE PRLA WALK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-279", date = "7/15/2016", job = "PRPO CRAM CUPE GUIL KING LECO MAYF POSE PRLA WALK", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-279", date = "7/15/2016", job = "16-279", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-255", date = "08/31/2016", job = "16-255", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "09/03/2016", job = "NN2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-143", date = "08/02/2016", job = "16-143", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-281", date = "08/02/2016", job = "16-281", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-262", date = "08/05/2016", job = "16-262", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "S-TEST", date = "09/05/2016", job = "S-TEST", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-271", date = "09/08/2016", job = "16-271", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "08/26/2016", job = "nn2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-257", date = "08/29/2016", job = "16-257", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-247", date = "08/20/2016", job = "16-247", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-246", date = "08/20/2016", job = "16-246", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "07/10/2016", job = "NN2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-264", date = "08/15/2016", job = "16-264", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-230", date = "08/10/2016", job = "16-230", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-184", date = "08/10/2016", job = "16-184", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-143", date = "06/10/2016", job = "16-143", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-104", date = "08/12/2016", job = "16-104", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-138", date = "05/10/2016", job = "16-138", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-183", date = "06/01/2016", job = "16-183", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-158", date = "06/01/2016", job = "16-158", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-185", date = "06/15/2016", job = "16-185", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-181", date = "07/15/2016", job = "16-181", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-209", date = "07/15/2016", job = "16-209", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-211", date = "07/15/2016", job = "16-211", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-210", date = "07/15/2016", job = "16-210", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-208", date = "07/15/2016", job = "16-208", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-200", date = "07/10/2016", job = "16-200", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-153", date = "07/10/2016", job = "16-153", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-161", date = "07/10/2016", job = "16-161", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-185", date = "06/25/2016", job = "16-185", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-150", date = "06/01/2016", job = "16-150", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Precipitation", date = "06/01/2016", job = "Precip", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-143", date = "06/01/2016", job = "16-143", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-168", date = "06/01/2016", job = "16-168", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-139", date = "05/20/2016", job = "16-139", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-143", date = "05/11/2016", job = "16-143", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-124", date = "05/11/2016", job = "16-124", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-143", date = "05/01/2016", job = "16-143", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-129", date = "05/06/2016", job = "16-129", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-118", date = "04/26/2016", job = "16-118", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-143", date = "04/27/2016", job = "16-143", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-117", date = "04/27/2016", job = "16-117", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-097", date = "04/15/2016", job = "16-097", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-117", date = "04/02/2016", job = "16-117", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "04/20/2016", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-107", date = "04/02/2016", job = "16-107", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Precipitation", date = "04/02/2016", job = "Precip", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-085", date = "04/02/2016", job = "16-085", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-097", date = "04/02/2016", job = "16-097", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-106", date = "03/25/2016", job = "16-106", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-107", date = "04/07/2016", job = "16-107", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2016 Navajo Nation", date = "03/28/2016", job = "NN2016", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-021", date = "03/20/2016", job = "16-021", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-085", date = "03/20/2016", job = "16-085", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-073", date = "03/20/2016", job = "16-073", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-087", date = "03/02/2016", job = "16-087", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-085", date = "03/02/2016", job = "16-085", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-081", date = "03/12/2016", job = "16-081", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-064", date = "03/11/2016", job = "16-064", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-065", date = "02/10/2016", job = "16-065", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-030", date = "02/10/2016", job = "16-030", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-015", date = "02/11/2016", job = "16-015", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2015 Navajo Nation", date = "02/07/2016", job = "NN2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-196", date = "02/10/2016", job = "15-196", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-028", date = "02/08/2016", job = "16-028", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2015 Navajo Nation", date = "02/03/2016", job = "NN2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Erik", date = "01/30/2016", job = "Erik", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2015 Navajo Nation", date = "01/30/2016", job = "NN2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "01/30/2016", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-287", date = "01/30/2016", job = "15-287", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-007", date = "01/26/2016", job = "16-007", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-196", date = "01/26/2016", job = "15-196", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "01/26/2016", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Precipitation", date = "11/24/2015", job = "Precip", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "01/24/2016", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-267", date = "01/20/2015", job = "15-267", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-001", date = "01/22/2016", job = "16-001", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "11/12/2015", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-267", date = "01/22/2016", job = "15-267", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-196", date = "01/11/2016", job = "15-196", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-002", date = "01/12/2016", job = "16-002", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-003", date = "01/10/2016", job = "16-003", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "16-006", date = "01/12/2016", job = "16-006", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-263", date = "01/04/2016", job = "15-263", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-285", date = "01/04/2016", job = "15-285", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-287", date = "01/05/2016", job = "15-287", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2015 Navajo Nation", date = "01/04/2016", job = "NN2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-247", date = "01/03/2016", job = "15-247", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-248", date = "01/03/2016", job = "15-248", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-299", date = "12/22/2015", job = "POSE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-254", date = "11/22/2015", job = "POSE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-288", date = "12/25/2015", job = "15-288", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-246", date = "12/25/2015", job = "15-246", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-259", date = "12/1/2015", job = "15-259", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-099", date = "12/1/2015", job = "15-099", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "SBW", date = "11/11/2015", job = "SBW", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-099", date = "11/23/2015", job = "15-099", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-219", date = "11/13/2015", job = "15-219", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-099", date = "11/16/2015", job = "15-099", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-223", date = "11/18/2015", job = "15-223", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-229", date = "11/10/2015", job = "15-229", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-236", date = "11/15/2015", job = "15-236", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-219", date = "11/11/2015", job = "15-219", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "alex", date = "11/08/2015", job = "alex", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "11/08/2015", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "11/03/2015", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-099", date = "10/20/2015", job = "15-099", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-216", date = "10/24/2015", job = "POSE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Precipitation", date = "10/20/2015", job = "Precip", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-189", date = "10/02/2015", job = "15-189", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-208", date = "10/20/2015", job = "15-208", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Navajo Nation 2015", date = "10/12/2015", job = "NN2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "alex", date = "10/12/2015", job = "alex", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-105", date = "10/15/2015", job = "15-105", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-181", date = "9/30/2015", job = "15-181", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Navajo Nation 2015", date = "10/12/2015", job = "NN2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-105", date = "9/20/2015", job = "15-105", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "2015 Navajo Nation", date = "10/01/2015", job = "NN 2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Navajo Nation 2015", date = "9/28/2015", job = "NN2015", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "test", date = "10/02/2015", job = "test", 
        report = "sirfer", runs = FALSE, ignore = FALSE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-185", date = "9/24/2015", job = "15-185", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-181", date = "9/24/2015", job = "15-181", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-186", date = "9/28/2015", job = "POSE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-181", date = "9/28/2015", job = "15-181", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-186", date = "9/28/2015", job = "POSE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-184", date = "9/21/2015", job = "15-184", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-184", date = "9/16/2015", job = "15-184", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-183", date = "9/16/2015", job = "15-183", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-105", date = "9/16/2015", job = "15-105", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-174", date = "9/18/2015", job = "15-174", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-105", date = "9/04/2015", job = "15-105", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-172", date = "9/04/2015", job = "15-172", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-173", date = "9/11/2015", job = "15-173", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-176", date = "9/4/2015", job = "15-176", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "precipitation", date = "9/4/2015", job = "precip", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Yusuf", date = "9/4/2015", job = "Yusuf", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-177", date = "9/4/2015", job = "15-177", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-105", date = "8/20/2015", job = "15-105", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Yusuf", date = "8/20/2015", job = "Yusuf", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "Yusuf", date = "8/20/2015", job = "Yusuf", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-102", date = "8/20/2015", job = "15-102", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-165", date = "8/15/2015", job = "15-165", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-105", date = "8/13/2015", job = "15-105", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-102", date = "8/04/2015", job = "15-102", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "UVU AUG", date = "8/04/2015", job = "UVU-AUG15", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "UVU-AUG15", date = "8/04/2015", job = "UVU-AUG15", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-144", date = "8/05/2015", job = "15-144", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-151", date = "8/04/2015", job = "15-151", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-132", date = "8/04/2015", job = "15-132", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-150", date = "8/04/2015", job = "15-150", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "D", date = "8/04/2015", job = "Darren", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################


#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-144", date = "8/04/2015", job = "15-144", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

##########################################################################################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-132", date = "7/22/2015", job = "15-132", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

##########################################################################################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "sirfer-cali", date = "7/22/2015", job = "sirfer-cali", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-102", date = "7/14/2015", job = "15-102", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-137", date = "7/05/2015", job = "POSE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-102", date = "7/05/2015", job = "15-102", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "precipitation", date = "7/13/2015", job = "precip", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-136", date = "7/09/2015", job = "15-136", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-125", date = "6/24/2015", job = "15-125", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-102", date = "6/8/2015", job = "15-102", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

##########################################################################################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "ISO2015", date = "6/17/2015", job = "ISO2015", 
        report = "sirfer", runs = FALSE, ignore = FALSE, plot = TRUE) 
## generate report(s)
#####################################################################

##########################################################################################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "SSC-15-4", date = "6/16/2015", job = "SSC-15-4", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

##########################################################################################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-111", date = "6/5/2015", job = "15-111", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

##########################################################################################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-110", date = "5/25/2015", job = "15-110", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/u0939524/Dropbox") # update, eg. 
# "C:/Users/kblevins/Dropbox/SPATIAL lab"
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-103", date = "5/1/2015", job = "15-103", 
        report = "spatial", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-107", date = "5/1/2015", job = "STMA MAYF POSE", 
        report = "neon", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "14-217", date = "5/1/2015", job = "14-217", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("C:/Users/gjbowen/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-095", date = "5/1/2015", job = "15-095", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("D:/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-098", date = "5/1/2015", job = "15-098", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("D:/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-088", date = "4/10/2015", job = "15-088", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("D:/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-084", date = "4/10/2015", job = "15-084", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
## generate report(s)
#####################################################################

#####################################################################
setwd("D:/Dropbox") # update, eg. 
# C:/Users/kblevins/Dropbox/SPATIAL lab
source("Bowen_lab/R_scripts_active/report_functions.R") # load functions
reports(ID2 = "15-077", date = "4/1/2015", job = "15-077", 
        report = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE) 
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
