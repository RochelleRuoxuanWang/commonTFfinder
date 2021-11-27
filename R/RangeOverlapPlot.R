#' Plot Overlap in Sequence Ranges
#'
#' Plots information criteria values given numeric information criteria
#' values.
#'
#' @param chipset1 A GRanges object representing a set of ChIPseq data.
#' @param chipset2 Another GRanges object representing a set of ChIPseq
#'   data.
#'
#' @return Returns a plot of ranges of sequence that have been identified
#'   in both sets of data
#'
#' @examples
#' RangeOverlapPlot(cstest$gfp, cstest$ctcf)
#'
#' @export
#' @import graphics
#' @import GenomicRanges
RangeOverlapPlot <- function(chipset1, chipset2) {

  # plotting
  covg = GenomicRanges::coverage(cstest$gfp)
  covg_chr10 = covg[['chr10']]
  plot(covg_chr10, type='l')
  plotExample <- graphics::plot(unlist(infValues), type = "p",
                                ylab = "Information Criteria Value",
                                xlab = "Information Criterion",
                                xaxt = "n",
                                main = "Example Plot")
  plotAxis <- plotExample + axis(1, at = 1:2,
                                 labels = c("BIC", "AIC"))
  return(plotAxis)
}

firstFunction <- function(argumentOne, argumentTwo) {
  cat("\n First argument is", argumentOne, "\n")
  cat("\n Second argument is", argumentTwo, "\n")
  argumentThree <- argumentTwo + 1
  cat("\n Second argument + 1 is", argumentThree, "\n")
  return(argumentThree)
}

# [END] written by Ruoxuan Wang
