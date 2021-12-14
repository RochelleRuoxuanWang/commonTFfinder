#' Find Overlap in Sequence Ranges
#'
#' Overlap of ChIP-seq peaks, indicating possible binding sites.
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
#' @return Returns ranges of sequence present in both sets of data
#'
#' @examples
#' OverlappingSites(cstest$gfp, cstest$ctcf)
#'
#' @references
#' Lawrence M, Huber W, Pagès H, Aboyoun P, Carlson M, Gentleman R, Morgan
#'   M, Carey V (2013). “Software for Computing and Annotating Genomic Ranges.”
#'   PLoS Computational Biology, 9. doi: 10.1371/journal.pcbi.1003118,
#'   http://www.ploscompbiol.org/article/info%3Adoi%2F10.1371%2Fjournal.pcbi.1003118.
#'
#' @export
#' @import GenomicRanges
#' @import valr
#'
OverlappingSites <- function(chipset1, chipset2) {

  # seq <- Biostrings::getSeq(BSgenome.Mmusculus.UCSC.mm8, chipset1)
  # installation doesn't work due to incompatible versions
  # BiocManager::install("biomaRt") also doesn't work
  # Note for future development

  # number of overlaps
  table(!is.na(GenomicRanges::findOverlaps(cstest$gfp, cstest$ctcf, select="arbitrary")))

  # other option
  GenomicRanges::countOverlaps(cstest$gfp, cstest$ctcf)
  overlap <- GenomicRanges::findOverlaps(cstest$gfp, cstest$ctcf)
  as.data.frame(overlap)[[1]] #queryHits

  # for each chromosome
  # transform example data from above to data.frame and add required column `"chrom"`
  gr1 <- as.data.frame(cstest$gfp) %>% mutate(chrom = "chr10") %>% select(chrom, start, end)
  gr2 <- as.data.frame(cstest$ctcf) %>% mutate(chrom = "chr10") %>% select(chrom, start, end)
  overlap <- valr::bed_intersect(gr1, gr2, suffix = c("_gr1", "_gr2"))

  return(overlap)
}

# [END] written by Ruoxuan Wang
