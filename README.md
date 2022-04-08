# CRDSutils Package

This R package is used to process, manage, and report liquid water sample isotope data generated using Picarro L21X0-i analyzers in the SIRFER lab at the University of Utah. Components may be reusable/portable to other labs; future versions will improve portability.

-----

## Setup

```
library(devtools)
install_github("SPATIAL-Lab/CRDSutils@*release")
library(CRDSutils)
write_config()
```

Installs the current release from GitHub. 

The `write_config` function is an interactive tool that collects and saves configuration information.

File system setup should be as follows. Each of the first-order directory or file paths will be requested and saved by `write_config`.

* _dataPath_ - Directory within which CRDS data output by one or more Picarro instruments can be found. Contains: 
   * _instrument_ folder - First-level subdirectory of _dataPath_, folder name should correspond to the instrument serial number, e.g., "hids1234". Coordinator output files for each run should be saved in this directory.
   * _runfiles_ folder - First-level subdirectory of each _instrument folder_. 
      * Folder name should be "runfiles". 
      * Folder should contain a .csv runfile for each run that holds the sample ID information. 
      * File naming convention is _YYMMDD\_JOBNUM1\_JOBNUM2\_\.\.\.\_HIDS1234.csv_, where _YYMMDD_ is the date on which the run was started and _JOBNUM\*_ is one or more job or batch IDs, also entered in the _Identifier 2_ field of the runfile, used to identify a group of samples for later retrieval or reporting.
      * Runfile format is 4 columns with a header row: _Tray, Vial, Description, Identifier 2_. _Tray_ is an integer value (usually 1, holdover from old autosampler systems and not used here). _Vial_ is an integer value, usually 1 to n, indicating the sample's position within the run sequence. _Description_ (character) is the sample ID, and _Identifier 2_ is the _JOBNUM_ or other batch identifier (see above; see [example file](https://github.com/SPATIAL-Lab/CRDSutils/tree/master/exampleFiles/220107_20-196_21-252_Precip_HIDS2046.csv)).
* _refFile_ - .csv file containing information on the lab's primary (plrm) and secondary (slrm) reference materials and QC criteria used to calibrate and validate the analytical data. Two plrms are required and are used to calibrate measured values. One slrm is required and used to correct through-run drift and evaluate accuracy and precision. See [example file](https://github.com/SPATIAL-Lab/CRDSutils/tree/master/exampleFiles/refFile.csv) for file format.
* _ioPath_ - Directory within which summary and report files will be written and read. Two subdirectories are required, one optional:
   * _CRDS\_liquidH2O_ folder - .html and .xlsx files recording the processing and results of data from individual runs will be saved to and read from this folder.
   * _Data\_reports_ folder - Formatted summary reports containing all results associated with a given job or project will be saved in subdirectories within this folder.
   * _NEON\_shipping_ folder (optional) - Used by the SIRFER lab for sample ingest from NEON sites.

-----

## Reduce Data from a CRDS Run

```
reduce("hids1234", "2022-01-01")
```

The high-level function `reduce` processes and calibrates data from a CRDS run, generates two reports, and optionally exports the data to the Waterisotopes Database (if configured in `write_config`, for authenticated users). The data reduction workflow is defined in a [markdown file](https://github.com/SPATIAL-Lab/CRDSutils/tree/master//inst/dataReduction_template.Rmd) bundled with the package and follows these steps:

1. The CRDS coordinator file and runfile for the instrument and date specified are identified and checked for consistency. Minor discrepancies (e.g., missing injections) are reported.
2. Iteratively execute the Memory-Drift-Outlier cycle until no outlier data are detected.
   1. Fit memory correction parameters. Each injection's measured value is modeled as a weighted average of the true value for the current sample and the measured values of the previous 8 injections. These weights are the memory correction parameters, and are fit using numerical optimization to minimize the variance of replicate injections for samples and standards. 
   2. Apply memory correction to all injections.
   3. Average the replicate injections for each sample or standard.
   4. Fit a smoothing spline to the averaged slrm values to model instrumental drift throughout the run. Degrees of freedom = ceiling(n/2), where n is the number of slrm measurements. For n < 4 no curve is fit. Drift corrections are plotted in the .html report.
   5. Apply drift correction to all measurements.
   6. Conduct outlier detection. Outliers are identified if either the H or O value of an injection is more than 3.5 &sigma; from the mean value for that sample, where &sigma; is calculated from all injections centered on their sample or standard means.
   7. If one or more outlier injections are identified, mark the injection with the highest Z-score for each isotope system (i.e., up to 2 injections per iteration) as an outlier to be excluded from further analyses and repeat the MDO operations. Outlier identification plots are printed in the .html report.
3. Calibrate all data using the known and measured plrm values. 1,000 calibrated values are generated for each sample or slrm and are used to obtain a mean and uncertainty (1 &sigma;) for that sample/slrm. For each iteration values are drawn at random from univariate normal distributions for:
   1. the measured sample or slrm value (distribution defined by the mean and standard deviation of the replicate injections), 
   2. the measured plrm value (distribution defined by the mean and standard deviation of the replicate injections), and 
   3. the calibrated known plrm value (mean and standard deviation determined during plrm calibration and reported in _refFile_).
4. Evaluate data reduction metrics and sample uncertainty against QC criteria documented in _refFile_, and set an "ignore" flag for either all samples or individual samples if the data reduction metrics or sample uncertainty (respectively) don't meet those criteria.
5. Print a cross-plot of sample H and O isotope values, QC summary table, and sample value table to the .html data reduction report.
6. Save data reduction results and information in an .xlsx file.
7. Export data reduction results and corrected/calibrated data to the Waterisotopes Database, if configured.

-----

## Generate a Data Report

```
report("22-060")
```

This high-level function can be used to generate a data report containing results for samples associated with a given _JOBNUM_ (or any secondary ID) and analyzed in one or more CRDS runs. Reports are saved in one of several formats (see help page), and the processing steps vary with format. In general, data associated with the job are identified, retrieved, and compiled, possibly along with reference material or QC data associated with the runs in which the samples were analyzed. These are then formatted and written to .xlsx or .csv files.

All versions of the `report` currently require an authenticated connection to the Waterisotopes Database; future versions of the package will support report generation from the .xlsx data reduction reports without a database connection.