\name{neon_receipt}

\alias{neon_receipt}

\title{
Log in files received from NEON
}

\description{
Interactively processes NEON sample shipping file using barcodes and writes a receipt file and database records.
}

\usage{
neon_receipt(fname)
}

\arguments{
\item{fname}{character. File name (within the user's \dQuote{neonPath}) for a sample shipping file provided by NEON.}
}

\details{
Requires access to a user configuration file written using \code{\link{write_config}} and properly formatted and structured data files and directories. See package man page \code{\link{CRDSutils}} for details.

Writes output to the \dQuote{neonPath} directory documented in the user's configuration file.
}