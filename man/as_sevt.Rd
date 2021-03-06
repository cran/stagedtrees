% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1b-base-model-function.R
\name{as_sevt}
\alias{as_sevt}
\alias{as_sevt.bn.fit}
\title{Coerce to sevt}
\usage{
as_sevt(x, order = NULL, ...)

\method{as_sevt}{bn.fit}(x, order = NULL, ...)
}
\arguments{
\item{x}{an R object.}

\item{order}{order of the variables.}

\item{...}{additional parmaeters to be used by specific methods.}
}
\value{
the equivalent object of class \code{\link{sevt}}.
}
\description{
Convert to an equivalent object of class \code{\link{sevt}}.
}
\details{
In \code{as_sevt.bn.fit} the \code{order}
argument, if provided, must be a topological order of the
\code{bn.fit} object (no check is performed). If the order is not provided
a topological order will be used (the one returned by
\code{bnlearn::node.ordering}).

A method for objects of class \code{bn.fit}
(\code{bnlearn} package).
}
