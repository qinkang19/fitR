% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logLikelihood.r
\name{logPosterior}
\alias{logPosterior}
\title{Posterior distribution for a fitmodel}
\usage{
logPosterior(fitmodel, theta, init.state, data, margLogLike = dTrajObs, ...)
}
\arguments{
\item{fitmodel}{a \code{\link{fitmodel}} object}

\item{theta}{named numeric vector. Values of the parameters. Names should match \code{fitmodel$theta.names}.}

\item{init.state}{named numeric vector. Initial values of the state variables. Names should match \code{fitmodel$state.names}.}

\item{data}{data frame. Observation times and observed data. The time column must be named \code{"time"} and the observation column must be named \code{"obs"}.}

\item{margLogLike}{\R-function to compute the marginal log-likelihood of \code{theta}.}

\item{...}{further arguments to be passed to \code{margLogLike}}
}
\value{
a list of two elements
\itemize{
	\item \code{log.density} numeric, logged value of the posterior density evaluated at \code{theta}
	\item \code{trace} named vector with trace information (theta, log.prior, marg.log.like, log.posterior)
}
}
\description{
This function evaluates the posterior distribution at \code{theta} and returns the result in a suitable format for \code{\link{mcmcMH}}.
}
\seealso{
\code{\link{dTrajObs}}, \code{\link{margLogLikeSto}}
}
