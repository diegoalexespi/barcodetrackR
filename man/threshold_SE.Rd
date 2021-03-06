% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/threshold_SE.R
\name{threshold_SE}
\alias{threshold_SE}
\title{Threshold SE}
\usage{
threshold_SE(
  your_SE,
  threshold_value,
  threshold_type = "relative",
  verbose = TRUE
)
}
\arguments{
\item{your_SE}{A Summarized Experiment object.}

\item{threshold_value}{Numeric. The minimum threshold abundance for a barcode to be maintained in the SE. If `threshold_type` is relative, this parameter should be between 0 and 1. If `threshold_type` is absolute, this parameter should be greater than 1.}

\item{threshold_type}{Character. One of "relative" or "absolute" relative. If a relative threshold is specified, only those rows which have higher than `threshold_value` proportion of reads within at least one sample will be kept as non-zero. If an absolute threshold is specified, only those rows which have an absolute read count higher than `threshold_value` in at least one sample will be kept as non-zero.}

\item{verbose}{Logical. If TRUE, print the total number of barcodes removed from the SE.}
}
\value{
Returns a SummarizedExperiment containing only barcodes which passed the supplied threshold in at least one sample. All of the defualt assays are re-calculated after thresholding is applied. Note that since tthe SE is re-instantiated, any custom assays should be recalculated after thresholding.
}
\description{
Removes barcodes from a SummarizedExperiment object which have an abundance lower than the provided relative or absolute threshold. See the function `estimate_barcode_threshold` to estimate an appropriate threshold for an SE.
}
\examples{
data(wu_subset)
threshold_SE(
    your_SE = wu_subset, threshold_value = 0.005,
    threshold_type = "relative", verbose = TRUE
)
}
