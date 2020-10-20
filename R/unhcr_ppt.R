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
    toc_depth = 2,
    fig_caption = TRUE,
    fig_height = 9,
    fig_width = 18,
    #includes = rmarkdown::includes(reference_doc = doctemp),
    reference_doc = doctemp,
    ...
  )
}


# https://support.rstudio.com/hc/en-us/articles/360004672913-Rendering-PowerPoint-Presentations-with-RStudio#structuring-the-presentation
## https://stackoverflow.com/questions/55598415/r-markdown-powerpoint-slide-customization
# Go into View -> Slide Master to make sure the slides in the master are the format you expect (one time I thought I made the changes, but they showed up on the Home menu and not the Slide Master)
#
# Under the Home menu, click the Dropdown under Layout and make sure AT THE LEAST that you see these four elements:
#
#     Title
#     Title and Content
#     Section Header
#     Two Content
### used as follow :
# Section header (Slide 2)
## Section header (Slide 3)
### Slide Title (Slide 4)
#### Slide content header (Slide 4)
##### Slide content header (Slide 4)
## you can upload your template to https://rmarkdown-office-template.herokuapp.com/ and it will test against these rules
# https://github.com/sol-eng/powerpoint
## This may require some xml hacking:
# http://www.brandwares.com/bestpractices/2015/02/xml-hacking-an-introduction/
# http://www.brandwares.com/bestpractices/2015/08/xml-hacking-table-styles-complete/
# http://www.brandwares.com/bestpractices/2015/03/xml-hacking-default-table-text/
