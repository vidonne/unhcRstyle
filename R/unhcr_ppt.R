#' UNHCR ppt template
#'
#' Loads additional style and template file
#'
#' @references https://raw.githubusercontent.com/dr-harper/example-rmd-templates/master/R/my_html_format.R
#'
#' @param toc should a table of contents be displayed?
#' @param ... additional arguments provided to \code{html_document}
#' @export
#'
unhcr_ppt <- function(
  ...) {

  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "unhcRstyle")
  }

  doctemp = pkg_resource("resources/templateUNHCR.pptx")

  # call the base html_document function
  rmarkdown::powerpoint_presentation(
    fig_caption = TRUE,
    fig_height = 5,
    fig_width = 8,
    toc_depth = 2,
    includes = rmarkdown::includes(reference_doc = doctemp),
    ...
  )
}
