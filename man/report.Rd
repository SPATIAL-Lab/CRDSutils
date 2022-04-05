\name{report}

\alias{report}

\title{
Generate CRDS data report
}

\description{
Combines data associated with a job and writes job report in specified format.
}

\usage{
report(job, firstDate, style = "sirfer", runs = FALSE, ignore = TRUE, plot = TRUE)
}

\arguments{
\item{job}{character. Job number or other value used to group samples in the ID2 field, e.g., \dQuote{21-014}.}
\item{firstDate}{character. Earliest run date to include in the report, e.g., \dQuote{2021-10-31}.}
\item{style}{character. Report format, one of \dQuote{sirfer}, \dQuote{neon}, or \dQuote{spatial}.}
\item{runs}{logical. Return a list of runs for the specified \code{job} and \code{firstDate} instead of generating reports?}
\item{ignore}{logical. Remove sample and standard values that did not meet QC criteria?}
\item{plot}{logical. Generate GMWL plot with all sample values?}
}

\details{
Requires access to a user configuration file written using \code{\link{write_config}} and properly formatted and structured data files and directories. See package man page \code{\link{CRDSutils}} for details.

Writes output to the \dQuote{reportPath} directory documented in the user's configuration file.
}