% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stagedtrees.R
\docType{package}
\name{stagedtrees}
\alias{stagedtrees}
\title{Staged event trees.}
\description{
Algorithms to create, learn, fit and explore staged event tree models.
Functions to compute probabilities, make predictions from the fitted
models and to plot, analyze and manipulate staged event trees.
}
\details{
A staged event tree is a representation of a particular
factorization of a joint probability over a product space.
In particular, given a vector of categorical random variables
\eqn{X1, X2, \ldots}, a staged event tree represents the factorization
\eqn{P(X1, X2, X3, \ldots) = P(X1)P(X2 | X1) P(X3 | X1, X2) \ldots }.
Additionally, the stages structure indicates which conditional probabilities
are equal.

Model selection algorithms:
\itemize{
\item full model \code{\link{full}}
\item independence model \code{\link{indep}}
\item Hill-Climbing \code{\link{stages_hc}}
\item Backward Hill-Climbing \code{\link{stages_bhc}}
\item Fast Backward Hill-Climbing \code{\link{stages_fbhc}}
\item Backward Hill-Climbing Random \code{\link{stages_bhcr}}
\item Backward joining \code{\link{stages_bj}}
\item Hierarchical Clustering \code{\link{stages_hclust}}
\item K-Means Clustering \code{\link{stages_kmeans}}
}

Probabilities, log-likelihood and predictions:
\itemize{
\item Marginal probabilities \code{\link{prob}}
\item Log-Likelihood \code{\link{logLik.sevt}}
\item Predict method \code{\link{predict.sevt}}
}

Plot, explore and compare:
\itemize{
\item Plot \code{\link{plot.sevt}}
\item Compare \code{\link{compare_stages}}
\item Stages inclusion \code{\link{inclusions_stages}}
\item Stages info \code{\link{summary.sevt}}
}

Modify models:
\itemize{
\item Join and isolate unobserved situations \code{\link{join_unobserved}}
\item Join two stages \code{\link{join_stages}}
\item Rename a stage \code{\link{rename_stage}}
}
}
\examples{
data("PhDArticles")
mf <- full(PhDArticles, join_unobserved = TRUE)
mod <- stages_fbhc(mf)
plot(mod)
}
\references{
Collazo R. A., Görgen C. and Smith J. Q.
Chain event graphs. CRC Press, 2018.

Görgen C., Bigatti A., Riccomagno E. and Smith J. Q.
Discovery of statistical equivalence classes using computer algebra.
\emph{International Journal of Approximate Reasoning}, vol. 95, pp. 167-184, 2018.

Barclay L. M., Hutton J. L. and Smith J. Q.
Refining a Bayesian network using a chain event graph.
\emph{International Journal of Approximate Reasoning}, vol. 54, pp. 1300-1309, 2013.

Smith J. Q. and Anderson P. E.
Conditional independence and chain event graphs.
\emph{Artificial Intelligence}, vol. 172, pp. 42-68, 2008.

Thwaites P. A., Smith, J. Q.
A new method for tackling asymmetric decision problems.
\emph{International Journal of Approximate Reasoning}, vol. 88, pp. 624–639, 2017.
}
