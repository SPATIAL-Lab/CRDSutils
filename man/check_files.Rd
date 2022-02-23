\name{check_files}

\alias{check_files}

\title{
Check Data Files
}

\description{
Check CRDS and sample ID files for consistency and completeness.
}

\usage{
check_files(files)
}

\arguments{
\item{files}{list. As created by \code{\link{file_lookup}}.}
}

\value{list. Named objects \code{data.file} and \code{ids.file} are recycled from \code{files} and object \code{oi} is a logical vector containing the value \dQuote{FALSE} for sample injections that are missing or to be ignored.}
