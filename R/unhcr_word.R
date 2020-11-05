#' UNHCR word template
#'
#' Loads additional style and template file
#'
#' @references https://raw.githubusercontent.com/dr-harper/example-rmd-templates/master/R/my_html_format.R
#'
#' @param toc should a table of contents be displayed?
#' @param ... additional arguments provided to \code{html_document}
#' @return An R Markdown output format.
#' @export
#'
unhcr_word <- function(
  toc = TRUE,
  ...) {

  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "unhcRstyle")
  }

  doctemp = pkg_resource("resources/style-unhcr-portrait.docx")

  # call the base html_document function
  rmarkdown::word_document(
    toc = toc,
    toc_depth = 2,
    fig_height = 6,
    fig_width = 9,
    #includes = rmarkdown::includes(reference_docx = doctemp),
    reference_docx = doctemp,
    ...
  )
}
