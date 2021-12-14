#' Plot Comparing Coverage of ChIP-Seq Data
#'
#' Plots the coverages of two sets of ChIP-Seq Data for the same chromosome.
#' This function requires some time to run.
#'
#' @param chipset1 A GRanges object representing a set of ChIPseq data.
#' @param chipset2 Another GRanges object representing a set of ChIPseq
#'   data.
#'
#' @return Returns nothing, generating two coverage plots.
#'
#' @examples
#' CompareCoveragePlot(cstest$gfp, cstest$ctcf)
#'
#' @references
#' Lawrence M, Huber W, Pagès H, Aboyoun P, Carlson M, Gentleman R, Morgan
#'   M, Carey V (2013). “Software for Computing and Annotating Genomic Ranges.”
#'   PLoS Computational Biology, 9. doi: 10.1371/journal.pcbi.1003118,
#'   http://www.ploscompbiol.org/article/info%3Adoi%2F10.1371%2Fjournal.pcbi.1003118.
#' R Core Team (2021). R: A language and environment for statistical computing.
#'   R Foundation for Statistical Computing, Vienna, Austria. URL
#'   https://www.R-project.org/.
#'
#' @export
#' @import graphics
#' @import GenomicRanges
CompareCoveragePlot <- function(chipset1, chipset2, chromosome) {

  # calculating coverage based on input
  covg1 <- GenomicRanges::coverage(chipset1)
  covg2 <- GenomicRanges::coverage(chipset2)
  chromosomecovg1 <- covg1[[chromosome]]
  chromosomecovg2 <- covg2[[chromosome]]

  # plotting two graphs for comparison
  par(mfrow = c(2, 1))
  #takes really long to run, so most likely will change later
  graphics::plot(chromosomecovg1, type='l', main = "Coverage on Chromosme")
  graphics::plot(chromosomecovg2, type='l')

  return()
}
# [END] written by Ruoxuan Wang
