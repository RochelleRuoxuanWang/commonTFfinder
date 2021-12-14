#' Plot Common Binding Sites In
#'
#' Plots information criteria values given numeric information criteria
#' values. This function requires some time to run.
#'
#' @param chipset1 A GRanges object representing a set of ChIPseq data.
#' @param chipset2 Another GRanges object representing a set of ChIPseq
#'   data.
#'
#' @return Returns a plot of ranges of sequence that have been identified
#'   in both sets of data
#'
#' @examples
#' CompareCoveragePlot(cstest$gfp, cstest$ctcf)
#'
#' @references
#'
#' @export
#' @import graphics
#' @import GenomicRanges
CompareCoveragePlot <- function(chipset1, chipset2, chromosome) {

  # plotting
  covg1 = GenomicRanges::coverage(cstest$gfp)
  covg2 = GenomicRanges::coverage(cstest$ctcf)
  covg1_chr = covg1[['chr10']]
  covg2_chr = covg2[['chr10']]

  par(mfrow = c(1, 2))
  plot(covg1_chr, type='l') #takes really long to run
  plot(covg2_chr, type='l')
  plotExample <- graphics::plot(unlist(infValues), type = "p",
                                ylab = "Information Criteria Value",
                                xlab = "Information Criterion",
                                xaxt = "n",
                                main = "Example Plot")
  plotAxis <- plotExample + axis(1, at = 1:2,
                                 labels = c("BIC", "AIC"))
  return(plotAxis)
}
# [END] written by Ruoxuan Wang
