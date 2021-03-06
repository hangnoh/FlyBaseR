\name{id.converter2}
\alias{id.converter2}
\title{Updating FlyBase IDs to a certain version.}
\usage{
id.converter2(x, version, thread = 1)
}
\arguments{
\item{x}{a vector. FlyBase IDs.}

\item{version}{FlyBase ID version for the updated result. It should be either version numbers (e.g. 6.12) or FlyBase Release Numbers (e.g. FB2017_04).  The default is "current".}

\item{thread}{The function itself is slow, so in order to speed up you can use multiple CPU threads for parallelization. Default : thread = 1.}
}
\description{
The function takes FlyBase IDs (e.g. FBgn#######) as an input, and converts it into certain versions of IDs. This function is not able to handle gene symbols.
The function accesses the FlyBase FTP site, so requires internet-connection.
FlyBase IDs for genes that are split into multiple genes will be concatenated with two colons (::).  Genes that does not have matching IDs will be shown as "unknown".
}
\examples{
id.converter2(x, version=6.12)
id.converter2(x, version="FB2016_04", thread=4)
}
\keyword{flybase}
