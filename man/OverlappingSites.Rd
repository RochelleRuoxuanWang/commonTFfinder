% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PossibleBindingSites.R
\name{OverlappingSites}
\alias{OverlappingSites}
\title{Find Overlap in Sequence Ranges}
\usage{
OverlappingSites(chipset1, chipset2)
}
\arguments{
\item{chipset1}{A GRanges object representing a set of ChIPseq data.}

\item{chipset2}{Another GRanges object representing a set of ChIPseq
data.}
}
\value{
Returns ranges of sequence present in both sets of data
}
\description{
Overlap of ChIP-seq peaks, indicating possible binding sites.
Developmental Notes:
Use these packages once figure out problem
importFrom BSgenome.Mmusculus.UCSC.mm8 BSgenome.Mmusculus.UCSC.mm8
importFrom BSgenome.Hsapiens.UCSC.hg19 BSgenome.Hsapiens.UCSC.hg19
importFrom BSgenome.Hsapiens.UCSC.hg38 BSgenome.Hsapiens.UCSC.hg38
importFrom BSgenome.Mmusculus.UCSC.mm9 BSgenome.Mmusculus.UCSC.mm9
importFrom BSgenome.Mmusculus.UCSC.mm10 BSgenome.Mmusculus.UCSC.mm10
}
\examples{
OverlappingSites(cstest$gfp, cstest$ctcf)

}
\references{
Lawrence M, Huber W, Pagès H, Aboyoun P, Carlson M, Gentleman R, Morgan
M, Carey V (2013). “Software for Computing and Annotating Genomic Ranges.”
PLoS Computational Biology, 9. doi: 10.1371/journal.pcbi.1003118,
http://www.ploscompbiol.org/article/info\%3Adoi\%2F10.1371\%2Fjournal.pcbi.1003118.
}
