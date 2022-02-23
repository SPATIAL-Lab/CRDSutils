\name{db}

\alias{db}

\title{
Save Database Output
}

\description{
Writes processed data and QA/QC parameters to MySQL database.
}

\usage{
db(data, analyst)
}

\arguments{
\item{data}{list. As created by \code{\link{process_data}}}
\item{analyst}{character. Name of analyst conducting data reduction.}
}
