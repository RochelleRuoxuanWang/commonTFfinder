#' Launch Shiny App for commonTFfinder
#'
#' This function launches the Shiny app for commonTFfinder.
#' The code has been placed in \code{./inst/shiny-scripts}.
#'
#' @return No return value but open up a Shiny page.
#'
#' @examples
#' \dontrun{
#' commonTFfinder::runcommonTFfinder()
#' }
#'
#' @references
#' Grolemund, G. (2015). Learn Shiny - Video Tutorials. \href{https://shiny.rstudio.com/tutorial/}{Link}
#'
#' @export
#' @importFrom shiny runApp

runcommonTFfinder <- function() {
  appDir <- system.file("shiny-scripts",
                        package = "commonTFfinder")
  shiny::runApp(appDir, display.mode = "normal")
  return()
}
# [END]
