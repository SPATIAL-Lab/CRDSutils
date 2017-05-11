CRDS-processing
===============
These files are used to process data produced by our Picarro machines. I/O is specific to the instruments and file systems used by the SPATIAL & SIRFER labs at the University of Utah.

Compiled in 64 bit R 3.3.2 using the latest 64 bit Java release and 64 bit MySQL ODBC 5.3 Unicode Driver

--

CRDS_liquid_1.R - low level functions for processing data from Picarro liquid water isotope analyzers

CRDS_liquid_2.R - mid level file and data management functions for processing data from Picarro liquid water isotope analyzers

CRDS_liquid_3.R - high level scripts for intitializing system and running Picarro liquid water isotope analyzer data processing 

--

Metadata_functions.R - low level functions for reading, checking and uploading data from SPATIAL water sample metadata template into mySQL Waterisotopes Database

Upload_metadata.R - Upload_metadata.R - high level script for initializing system and uploading from SPATIAL water sample metadata template into mySQL Waterisotopes Database

--

NEON_shipping_function.R - low level function for extracting sample and shipping info from NEON sample reports and importing to mySQL Waterisotopes Database

NEON_shipping_processing.R - high level script for intializing system and uploading NEON sample and shipping information to mySQL Waterisotopes Database

--

Parameters_functions.R - low level functions for extracting and summarizing QA data for water isotope instruments

Parameters_analysis.R - high level script for running water isotope QA summaries

--

peak_picking.R - script for offline processing of Picarro water isotope analyzer data to indentify sample peaks

--

report_functions.R - low level functions for summarizing data for SPATIAL/SIRFER water isotope analysis projects and generating data reports in 1 of 3 different formats

report_process.R - high level script for initializing system and running data reporting
