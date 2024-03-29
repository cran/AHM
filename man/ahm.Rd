% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ahm.R
\name{ahm}
\alias{ahm}
\title{This is one of the main functions. The function ahm computes the proposed additive heredity model.}
\usage{
ahm(y, x, num_major = 3, dist_minor = c(2, 2, 1), type = "weak",
  alpha = 0, lambda_seq = seq(0, 5, 0.01), nfolds = NULL,
  mapping_type = c("power"), powerh = 0, rep_gcv = 100)
}
\arguments{
\item{y}{numeric vector}

\item{x}{data.frame Note the column names of the x should be in the order of major components, minor components, and no interactions are needed.}

\item{num_major}{number of major components}

\item{dist_minor}{the allocation of number of minor components nested under major components}

\item{type}{heredity type, weak heredity is the current support type}

\item{alpha}{0 is for the ridge in glmnet https://web.stanford.edu/~hastie/glmnet/glmnet_alpha.html}

\item{lambda_seq}{a numeric vector for the options of lambda used in ridge regression for estimating the initials}

\item{nfolds}{used in cv.glmnet for initial value of parameters in the non-negative garrote method}

\item{mapping_type}{the form of the coefficient function of major components in front of corresponding minor terms. Currently only support "power"}

\item{powerh}{the power parameter used for the power function}

\item{rep_gcv}{the number of choices of tuning parameter used in the GCV selection}
}
\value{
Return a list
}
\description{
This is one of the main functions. The function ahm computes the proposed additive heredity model.
}
\examples{
data("pringles_fat")
data_fat = pringles_fat
h_tmp = 1.3
x = data_fat[,c("c1","c2","c3","x11","x12","x21","x22")]
y = data_fat[,1]
out = ahm (y, x, num_major = 3, dist_minor = c(2,2,1),
           type = "weak", alpha=0, lambda_seq=seq(0,5,0.01), nfold = NULL,
           mapping_type = c("power"), powerh = h_tmp,
           rep_gcv=100)
summary(out)
}
