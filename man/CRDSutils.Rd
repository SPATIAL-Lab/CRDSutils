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
\item{outPath directory: A local system folder to which all .html reports and .xlsx data files will be written.}
}
}
