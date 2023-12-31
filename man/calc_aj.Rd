% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calib_pv.R
\name{calc_aj}
\alias{calc_aj}
\title{Estimate Aalen-Johansen estimator for a cohort of individuals}
\usage{
calc_aj(data.mstate, tmat, t, j)
}
\arguments{
\item{data.mstate}{Validation data in \code{msdata} format}

\item{tmat}{Transition probability matrix}

\item{t}{Follow up time at which calibration is to be assessed}

\item{j}{Landmark state at which predictions were made}
}
\description{
Estimates Aalen-Johansen estimator for the transition probabilities in cohort data.mstate.
Estimates transition probabilities at time t if in state j at time 0
The Aalen-Johansen estimator for the entire cohort (including individual person_id.eval)
is inputted manually (obs.aj), to speed up computational time if calculating pseudo-values
for multiple individuals from the same cohort.
}
