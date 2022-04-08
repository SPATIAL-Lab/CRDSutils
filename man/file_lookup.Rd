\name{file_lookup}

\alias{file_lookup}

\title{
Lookup Data Files
}

\description{
Finds CRDS and Sample ID files for specified instrument and date.
}

\usage{
file_lookup(instrument, runDate)
}

\arguments{
\item{instrument}{character. Instrument serial number, e.g., \dQuote{hids2052}.}
\item{runDate}{character. Run start date, as character string in format
\dQuote{\%Y-\%m-\%d}}
}

\value{
list. Named objects \code{data.file} and \code{ids.file} are character strings storing the file path for the CRDS and sample ID files for the specified run.
}
