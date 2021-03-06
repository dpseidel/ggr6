% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{oob_keep}
\alias{oob_keep}
\title{Keep out-of-bounds values}
\usage{
oob_keep(x, ...)
}
\arguments{
\item{x}{A vector of values.}

\item{...}{Used to accept any other parameters.}
}
\value{
\code{x} unchanged.
}
\description{
This out-of-bounds function returns its input unchanged,
and is arguably the opposite of \code{\link[scales:discard]{scales::discard()}}. Other useful
out-of-bounds functions include \code{\link[scales:censor]{scales::censor()}}, \code{\link[scales:squish]{scales::squish()}},
\code{\link[scales:squish_infinite]{scales::squish_infinite()}}, and \code{\link[scales:discard]{scales::discard()}}.
}
\examples{
oob_keep(1:5)

}
