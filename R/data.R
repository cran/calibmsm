#' European Group for Blood and Marrow Transplantation data (one row per individual)
#'
#' A data frame of 2,279 individuals with blood cancer who have undergone a transplant.
#' This data is identical to the \code{\link[mstate]{ebmt4}} data, except two extra variables have
#' been derived, time until censoring and a censoring indicator, which are required
#' to assess calibration using some of the methods in `calibmsm`. Code for the derivation
#' of this dataset is provided in the source code for the package.
#'
#' @format ## 'ebmtcal'
#' A data frame with 2,279 rows and 17 columns:
#' \describe{
#'   \item{id}{Patient indentifier}
#'   \item{rec, rec.s}{Time until and event indicator for recovery variable}
#'   \item{ae, ae.s}{Time until and event indicator for adverse event variable}
#'   \item{recae, recae.s}{Time until and event indicator for recovery + adverse event variable}
#'   \item{rel, rel.s}{Time until and event indicator for relapse variable}
#'   \item{srv, srv.s}{Time until and event indicator for death variable}
#'   \item{year}{Year of transplant}
#'   \item{agecl}{Age at transplant}
#'   \item{proph}{Prophylaxis}
#'   \item{match}{Donor-recipient match}
#'   \item{dtcens}{Time of censoring}
#'   \item{dtcens_s}{Event indicator, 1:censoring occured, 0: absorbing state entered before censoring occured}
#' }
#' @source This dataset was derived from data made available within the `mstate` package, see \code{\link[mstate]{ebmt4}}.
#' The data was originally provided by the European Group for Blood and Marrow Transplantation (https://www.ebmt.org/).
#' We reiterate the source statement given by the developers of `mstate`:
#' "We acknowledge the European Society for Blood and Marrow Transplantation (EBMT)
#' for making available these data. Disclaimer: these data were simplified for the
#' purpose of illustration of the analysis of competing risks and multi-state models
#' and do not reflect any real life situation. No clinical conclusions should be
#' drawn from these data."
#'
#' @references
#' EBMT (2023). “Data from the European Society for Blood and Marrow Transplantation.”
#' URL https://search.r-project.org/CRAN/refmans/mstate/html/EBMT-data.html.
#'
#' de Wreede LC, Fiocco M, Putter H (2011). “mstate: An R Package for the Analysis of
#' Competing Risks and Multi-State Models.” \emph{Journal of Statistical Software}, 38(7).
"ebmtcal"

#' European Group for Blood and Marrow Transplantation data in `msdata` format.
#'
#' The \code{\link[mstate]{ebmt4}} data converted into `msdata` format (see \code{\link[mstate]{msprep}}),
#' using the processes implemented in the `mstate` package. Code for the derivation
#' of this dataset is provided in the source code for the package.
#'
#' @format ## 'msebmtcal'
#' A data frame in `msdata` format (see \code{\link[mstate]{msprep}}) with 15,512 rows and 8 columns:
#' \describe{
#'   \item{id}{Patient indentifier}
#'   \item{from}{transition from state}
#'   \item{to}{transition to state}
#'   \item{trans}{transition number}
#'   \item{Tstart}{time entered state 'from'}
#'   \item{Tstop}{time leaving state 'from'}
#'   \item{time}{time in state 'from'}
#'   \item{status}{event indicator, 1:transitioned to state 'to'}
#' }
#' @source This dataset was derived from data made available within the `mstate` package, see \code{\link[mstate]{ebmt4}}.
#' The data was originally provided by the European Group for Blood and Marrow Transplantation (https://www.ebmt.org/).
#' We reiterate the source statement given by the developers of `mstate`:
#' "We acknowledge the European Society for Blood and Marrow Transplantation (EBMT)
#' for making available these data. Disclaimer: these data were simplified for the
#' purpose of illustration of the analysis of competing risks and multi-state models
#' and do not reflect any real life situation. No clinical conclusions should be
#' drawn from these data."
#'
#' @references
#' EBMT (2023). “Data from the European Society for Blood and Marrow Transplantation.”
#' URL https://search.r-project.org/CRAN/refmans/mstate/html/EBMT-data.html.
#'
#' de Wreede LC, Fiocco M, Putter H (2011). “mstate: An R Package for the Analysis of
#' Competing Risks and Multi-State Models.” \emph{Journal of Statistical Software}, 38(7).
"msebmtcal"

#' Predicted transition probabilities out of transplant state made at time s = 0
#'
#' Data frame containing the predicted transition probabilities out of state j = 1
#' made at time s = 0. The predicted transition probabilities were estimated by fitting
#' a multistate model to the \code{\link[mstate]{ebmt4}} data using a leave-one-out approach.
#' Code for deriving this dataset is provided in the source code for `calibmsm`. Code for the derivation
#' of this dataset is provided in the source code for the package.
#'
#' @format ## 'tps0'
#' A data frame with 13,674 (CHANGE) rows and 14 columns:
#' \describe{
#'   \item{id}{Patient indentifier}
#'   \item{pstate1, pstate2, pstate3, pstate4, pstate5, pstate6}{Predicted transition probabilities of transitions into states 1 to 6}
#'   \item{se1, se2, se3, se4, se5, se6}{Standard error of the predicted transition probabilities of transitions into states 1 to 6}
#'   \item{j}{State from which the predicted transition probabilities are estimated from}
#' }
#' @source This dataset was derived from data made available within the `mstate` package, see \code{\link[mstate]{ebmt4}}.
#' The data was originally provided by the European Group for Blood and Marrow Transplantation (https://www.ebmt.org/).
#' We reiterate the source statement given by the developers of `mstate`:
#' "We acknowledge the European Society for Blood and Marrow Transplantation (EBMT)
#' for making available these data. Disclaimer: these data were simplified for the
#' purpose of illustration of the analysis of competing risks and multi-state models
#' and do not reflect any real life situation. No clinical conclusions should be
#' drawn from these data."
#'
#' @references
#' EBMT (2023). “Data from the European Society for Blood and Marrow Transplantation.”
#' URL https://search.r-project.org/CRAN/refmans/mstate/html/EBMT-data.html.
#'
#' de Wreede LC, Fiocco M, Putter H (2011). “mstate: An R Package for the Analysis of
#' Competing Risks and Multi-State Models.” \emph{Journal of Statistical Software}, 38(7).
"tps0"

#' Predicted transition probabilities out of every state made at time s = 100
#'
#' Data frame containing the predicted transition probabilities out of states 1 (transplant),
#' 2 (adverse event), 3 (recovery) and 4 (adverse event + recovery), made at time s = 100.
#' The predicted transition probabilities were estimated by fitting a multistate model
#' to the \code{\link[mstate]{ebmt4}} data using a leave-one-out approach. Code for deriving
#' this dataset is provided in the source code for `calibmsm`. Code for derivation
#' of this dataset is provided in the source code for the package.
#'
#' @format ## 'tps100'
#' A data frame with 13,674 (CHANGE) rows and 14 columns:
#' \describe{
#'   \item{id}{Patient indentifier}
#'   \item{pstate1, pstate2, pstate3, pstate4, pstate5, pstate6}{Predicted transition probabilities of transitions into states 1 to 6}
#'   \item{se1, se2, se3, se4, se5, se6}{Standard error of the predicted transition probabilities of transitions into states 1 to 6}
#'   \item{j}{State from which the predicted transition probabilities are estimated from}
#' }
#' @source This dataset was derived from data made available within the `mstate` package, see \code{\link[mstate]{ebmt4}}.
#' The data was originally provided by the European Group for Blood and Marrow Transplantation (https://www.ebmt.org/).
#' We reiterate the source statement given by the developers of `mstate`:
#' "We acknowledge the European Society for Blood and Marrow Transplantation (EBMT)
#' for making available these data. Disclaimer: these data were simplified for the
#' purpose of illustration of the analysis of competing risks and multi-state models
#' and do not reflect any real life situation. No clinical conclusions should be
#' drawn from these data."
#'
#' @references
#' EBMT (2023). “Data from the European Society for Blood and Marrow Transplantation.”
#' URL https://search.r-project.org/CRAN/refmans/mstate/html/EBMT-data.html.
#'
#' de Wreede LC, Fiocco M, Putter H (2011). “mstate: An R Package for the Analysis of
#' Competing Risks and Multi-State Models.” \emph{Journal of Statistical Software}, 38(7).
"tps100"


#' European Group for Blood and Marrow Transplantation data (one row per individual)
#'
#' Used in vignette/article: Comparison-with-graphical-calibration-curves-in-competing-risks-setting.
#'
#' A data frame of 2,279 individuals with blood cancer who have undergone a transplant.
#' This data is identical to the \code{\link[mstate]{ebmt4}} data, except two extra variables have
#' been derived, time until censoring and a censoring indicator, which are required
#' to assess calibration using some of the methods in `calibmsm`. Specifically, the
#' time until censoring ar calculated in the setting of a competing risks model out of the
#' first state, where no further transitions can be made. This means entry into any
#' state (as they are all absorbing states) will have the effect of preventing censoring
#' from occurring, and `dtcens` and `dtcens_s` will be different than the values found
#' in \code{\link{ebmtcal}}. This dataset has been designed to be used alongside
#' dataset \code{\link{msebmtcal_cmprsk}}, when assessing the calibration of a competing
#' risks model. Code for the derivation of this dataset is provided in the source code for the package.
#'
#' @format ## 'ebmtcal_cmprsk'
#' A data frame with 2,279 rows and 17 columns:
#' \describe{
#'   \item{id}{Patient indentifier}
#'   \item{rec, rec.s}{Time until and event indicator for recovery variable}
#'   \item{ae, ae.s}{Time until and event indicator for adverse event variable}
#'   \item{recae, recae.s}{Time until and event indicator for recovery + adverse event variable}
#'   \item{rel, rel.s}{Time until and event indicator for relapse variable}
#'   \item{srv, srv.s}{Time until and event indicator for death variable}
#'   \item{year}{Year of transplant}
#'   \item{agecl}{Age at transplant}
#'   \item{proph}{Prophylaxis}
#'   \item{match}{Donor-recipient match}
#'   \item{dtcens}{Time of censoring}
#'   \item{dtcens_s}{Event indicator, 1:censoring occured, 0: absorbing state entered before censoring occured}
#' }
#' @source This dataset was derived from data made available within the `mstate` package, see \code{\link[mstate]{ebmt4}}.
#' The data was originally provided by the European Group for Blood and Marrow Transplantation (https://www.ebmt.org/).
#' We reiterate the source statement given by the developers of `mstate`:
#' "We acknowledge the European Society for Blood and Marrow Transplantation (EBMT)
#' for making available these data. Disclaimer: these data were simplified for the
#' purpose of illustration of the analysis of competing risks and multi-state models
#' and do not reflect any real life situation. No clinical conclusions should be
#' drawn from these data."
#'
#' @references
#' EBMT (2023). “Data from the European Society for Blood and Marrow Transplantation.”
#' URL https://search.r-project.org/CRAN/refmans/mstate/html/EBMT-data.html.
#'
#' de Wreede LC, Fiocco M, Putter H (2011). “mstate: An R Package for the Analysis of
#' Competing Risks and Multi-State Models.” \emph{Journal of Statistical Software}, 38(7).
"ebmtcal_cmprsk"


#' European Group for Blood and Marrow Transplantation data in competing risks format, for transitions out of the initial state only
#'
#' Used in vignette/article: Comparison-with-graphical-calibration-curves-in-competing-risks-setting.
#'
#' The \code{\link[mstate]{ebmt4}} data converted into `msdata` format (see \code{\link[mstate]{msprep}}),
#' where all subsequent states are considered absorbing states. i.e. only transitions out of the initial state are considered,
#' meaning this data constitutes a competing risks model out of the initial state. Code for the derivation
#' of this dataset is provided in the source code for the package.
#'
#' @format ## 'msebmtcal_cmprsk'
#' A data frame with 9,116 rows and 8 columns:
#' \describe{
#'   \item{id}{Patient indentifier}
#'   \item{from}{transition from state}
#'   \item{to}{transition to state}
#'   \item{trans}{transition number}
#'   \item{Tstart}{time entered state 'from'}
#'   \item{Tstop}{time leaving state 'from'}
#'   \item{time}{time in state 'from'}
#'   \item{status}{event indicator, 1:transitioned to state 'to'}
#' }
#' @source This dataset was derived from data made available within the `mstate` package, see \code{\link[mstate]{ebmt4}}.
#' The data was originally provided by the European Group for Blood and Marrow Transplantation (https://www.ebmt.org/).
#' We reiterate the source statement given by the developers of `mstate`:
#' "We acknowledge the European Society for Blood and Marrow Transplantation (EBMT)
#' for making available these data. Disclaimer: these data were simplified for the
#' purpose of illustration of the analysis of competing risks and multi-state models
#' and do not reflect any real life situation. No clinical conclusions should be
#' drawn from these data."
#'
#' @references
#' EBMT (2023). “Data from the European Society for Blood and Marrow Transplantation.”
#' URL https://search.r-project.org/CRAN/refmans/mstate/html/EBMT-data.html.
#'
#' de Wreede LC, Fiocco M, Putter H (2011). “mstate: An R Package for the Analysis of
#' Competing Risks and Multi-State Models.” \emph{Journal of Statistical Software}, 38(7).
"msebmtcal_cmprsk"

#' Predicted risks for a competing risks model out of state j = 0
#'
#' Used in vignette/article: Comparison-with-graphical-calibration-curves-in-competing-risks-setting.
#'
#' Data frame containing the predicted transition probabilities out of state j = 1
#' made at time s = 0, for a competing risks model out of the initial state (see \code{\link{msebmtcal_cmprsk}}).
#' The predicted transition probabilities were estimated by fitting
#' a competing risks model to the \code{\link{msebmtcal_cmprsk}} data using a leave-one-out approach.
#' Code for deriving this dataset is provided in the source code for `calibmsm`. Code for the derivation
#' of this dataset is provided in the source code for the package.
#'
#' @format ## 'tp_cmprsk_j0'
#' A data frame with 2,279 rows and 13 columns:
#' \describe{
#'   \item{id}{Patient indentifier}
#'   \item{pstate1, pstate2, pstate3, pstate4, pstate5, pstate6}{Predicted transition probabilities of transitions into states 1 to 6}
#'   \item{se1, se2, se3, se4, se5, se6}{Standard error of the predicted transition probabilities of transitions into states 1 to 6}
#' }
#' @source This dataset was derived from data made available within the `mstate` package, see \code{\link[mstate]{ebmt4}}.
#' The data was originally provided by the European Group for Blood and Marrow Transplantation (https://www.ebmt.org/).
#' We reiterate the source statement given by the developers of `mstate`:
#' "We acknowledge the European Society for Blood and Marrow Transplantation (EBMT)
#' for making available these data. Disclaimer: these data were simplified for the
#' purpose of illustration of the analysis of competing risks and multi-state models
#' and do not reflect any real life situation. No clinical conclusions should be
#' drawn from these data."
#'
#' @references
#' EBMT (2023). “Data from the European Society for Blood and Marrow Transplantation.”
#' URL https://search.r-project.org/CRAN/refmans/mstate/html/EBMT-data.html.
#'
#' de Wreede LC, Fiocco M, Putter H (2011). “mstate: An R Package for the Analysis of
#' Competing Risks and Multi-State Models.” \emph{Journal of Statistical Software}, 38(7).
"tp_cmprsk_j0"
