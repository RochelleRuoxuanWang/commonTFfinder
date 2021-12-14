#' Find Overlap in Sequence Ranges
#'
#' Plots information criteria values given numeric information criteria
#' values.
#' Developmental Notes:
#' Use these packages once figure out problem
#' importFrom BSgenome.Mmusculus.UCSC.mm8 BSgenome.Mmusculus.UCSC.mm8
#' importFrom BSgenome.Hsapiens.UCSC.hg19 BSgenome.Hsapiens.UCSC.hg19
#' importFrom BSgenome.Hsapiens.UCSC.hg38 BSgenome.Hsapiens.UCSC.hg38
#' importFrom BSgenome.Mmusculus.UCSC.mm9 BSgenome.Mmusculus.UCSC.mm9
#' importFrom BSgenome.Mmusculus.UCSC.mm10 BSgenome.Mmusculus.UCSC.mm10
#'
#' @param chipset1 A GRanges object representing a set of ChIPseq data.
#' @param chipset2 Another GRanges object representing a set of ChIPseq
#'   data.
#'
#' @return Returns a plot of ranges of sequence that have been identified
#'   in both sets of data
#'
#' @examples
#'
#'
#' @references
#'
#' @export
#' @import GenomicRanges
#'
OverlappingSites <- function(chipset1, chipset2) {

  # seq <- Biostrings::getSeq(BSgenome.Mmusculus.UCSC.mm8, chipset1)
  # installation doesn't work due to incompatible versions
  # BiocManager::install("biomaRt") also doesn't work
  # Note for future development

  table(!is.na(GenomicRanges::findOverlaps(cstest$gfp, cstest$ctcf, select="arbitrary")))
  GenomicRanges::countOverlaps(cstest$gfp, cstest$ctcf)
  overlap <- GenomicRanges::findOverlaps(cstest$gfp, cstest$ctcf)
  as.data.frame(overlap)[[1]] #queryHits

  seqnames
  gr1 <- as.data.frame(cstest$gfp)
  # transform example data from above to data.frame and add required column `"chrom"`
  gr1 <- as.data.frame(cstest$gfp) %>% mutate(chrom = "chr10") %>% select(chrom, start, end)
  gr2 <- as.data.frame(cstest$ctcf) %>% mutate(chrom = "chr10") %>% select(chrom, start, end)
  valr::bed_intersect(gr1, gr2, suffix = c("_gr1", "_gr2"))

  # and plot
  valr::bed_glyph(bed_intersect(gr1, gr2))

  return()
}

# [END] written by Ruoxuan Wang
