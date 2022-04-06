\name{CRDSutils}

\alias{CRDSutils}

\title{
CRDSutils Package
}

\description{
Tools for processing and managing water isotope data from Picarro CRDS instruments.
}

\details{
In addition to package installation, you will need to set up several files and directories used by the tools. The basic structure is described below.

\enumerate{
\item{dataPath directory: A local system folder within which all coordinator data files for CRDS runs are available.}
\enumerate{
\item{The tools look for the coordinator file for a given run in the instrument directory \dQuote{dataPath/instrument/}, where \dQuote{instrument} is the name of the CRDS instrument, formatted as written in the coordinator data file names (e.g., \dQuote{HIDS2046}).}
\item{Each instrument directory must also contain a subdirectory \dQuote{dataPath/instrument/runfiles} with appropriately formatted .csv files containing the sample IDs.}
}
\item{refFile: A .csv file accessible on the system that contains the IDs and known values for reference waters and values for QA parameters.}
\item{ioPath directory: A local system folder within which all reports will be written and read. It should contain the following subdirectories:
\enumerate{
\item{CRDS_liquidH2O: .html and .xlsx data report files will be written and read from this folder.}
\item{Data_reports: Formatted data reports for analytical jobs will be written here into subdirectories with names matching the \code{style} argument of \code{\link{report}}.}
\item{NEON_shipping: Contains NEON shipping manifest files. Processed receipt files will be output to a subdirectory named \dQuote{Processed}. Only required for SIRFER lab contract work using \dQuote{neon*} functions.}
}
}
}
}
