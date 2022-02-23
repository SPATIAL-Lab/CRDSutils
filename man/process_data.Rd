\name{process_data}

\alias{process_data}

\title{
Process CRDS Data
}

\description{
Process data, including outlier detection, memory correction, drift correction, and calibration to primary reference waters. Propagates uncertainty and generates plots for outlier dectection and drift.
}

\usage{
process_data(files)
}

\arguments{
\item{files}{list. As created by \code{\link{check_files}}.}
}

\value{list. 
\item{samples.summary}{Processed summary data for unknown samples.}
\item{slrm.summary}{Processed summary data for secondary reference water.}
\item{ref.all}{Raw and intermediate data for all reference water injections.}
\item{data.all}{Raw and intermediate data fro all unknown sample injections.}
\item{qa.report}{Summary of calibration and QA parameter values.}
\item{ref.compare}{Comparison of calibrated and known reference water values.}
}
