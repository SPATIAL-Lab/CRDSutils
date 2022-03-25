\name{reduce}

\alias{reduce}

\title{
Reduce CRDS Data Files
}

\description{
Runs all steps in data reduction and produces reports.
}

\usage{
reduce(instrument, runDate)
}

\arguments{
\item{instrument}{character. CRDS instrument name, e.g., \dQuote{hids2052}.}
\item{runDate}{character. Date on which the run was started, e.g., \dQuote{2021-10-31}.}
}

\details{
Requires access to a user configuration file written using \code{\link{write_config}} and properly formatted and structured data files and directories. See package man page \code{\link{CRDSutils}} for details.

Writes output to the \dQuote{outPath} directory documented in the user's configuration file.
}