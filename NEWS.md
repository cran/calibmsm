# calibmsm 1.1.3

* Fix tests identified as failing from reverse dependency checks due to upcoming changes in the new release of ggplot2, which is now transitioning to S7 class (see [here](https://github.com/tidyverse/ggplot2/issues/6498))

# calibmsm 1.1.2

* Change of code format to snake_case for all function arguments.

* Updating of overview vignette, and sensitivity-analyses-for-IPCWs, to bring inline with published manuscript.

# calibmsm 1.1.1

* Minor update introducing a new S3 generic `metadata`, and updated some S3 methods which were producing errors.

# calibmsm 1.1.0

* Change to package structure.

* Introduced one master function `calibmsm` which assess calibration using BLR-IPCW, MLR-IPCW and pseudo-values methodology.

* `calib_blr` changed to `calib_blr_ipcw`, `calib_mlr` changed to `calib_mlr_ipcw`, and `calib_blr_ipcw`, `calib_mlr_ipcw` and `calib_pv` are all changed into internal functions.

* Return the pseudo-values used to estimate calibration curves in the output for `calib_pv`, this allows users to parallelise code when estimating pseudo-values.

* Some minor changes to code of internal functions, and introduction of some new internal functions for processes which occur a number of times within the package (for example application of landmarking).

# calibmsm 1.0.0

* Submission of first version of package to CRAN.

# calibmsm 0.0.0.9000

* Added a `NEWS.md` file to track changes to the package.
