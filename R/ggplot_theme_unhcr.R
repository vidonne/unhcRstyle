## ggplot_theme_unhcr.R | unhcr
## ipda | unhcr.org |  2020
## ---------------------------

## Defining default themes for plotting.

## (A) ggplot2 themes: -------

## Check if ggplot2 is available:

# if (!require(ggplot2)) {
#
#   install.packages('ggplot2')   # installs ggplot2
#   library('ggplot2')            # loads ggplot2
#
# }

## Check if ggplot2 is loaded:

# if ("ggplot2" %in% (.packages())){
#
#   message("Package 'ggplot2' is loaded.")
#
# } # if ("ggplot2" %in% (.packages())) end.


## theme_unhcr: Default theme for ggplot2: ------

# - Documentation: ----

#' Basic UNHCR theme for ggplot2.
#'
#' \code{theme_unhcr} provides a basic \bold{UNHCR} theme
#' to use in \bold{ggplot2} commands.
#'
#' @param base_size Base font size (optional, numeric).
#' Default: \code{base_size = 11}.
#'
#' @param base_family Base font family (optional, character).
#' Default: \code{base_family = "Lato"}.
#' Options include \code{"mono"}, \code{"sans"} (default), and "serif".
#'
#' @examples #FIXME UNHCR example
#'
#' \donttest{
#'   # Plotting iris dataset (using ggplot2, theme_unikn, and unikn colors):
#'
#'   library('ggplot2')  # theme_unikn requires ggplot2
#'
#'   ggplot(datasets::iris) +
#'     geom_jitter(aes(x = Petal.Length, y = Petal.Width, color = Species), size = 3, alpha = 2/3) +
#'     scale_color_manual(values = usecol(pal = c(Pinky, Seeblau, Seegruen))) +
#'     labs(tag = "A", title = "Iris petals",
#'          caption = "Data from datasets::iris") +
#'     theme_unikn()
#' }
#'
#' @family plot functions
#'
#' @import ggplot2
#'
#' @export

# - Definition: ----

# Base clean theme to build from
theme_foundation <- function(base_size=12, base_family="") {
  thm <- theme_grey(base_size = base_size, base_family = base_family)
  for (i in names(thm)) {
    if ("colour" %in% names(thm[[i]])) {
      thm[[i]]["colour"] <- list(NULL)
    }
    if ("fill" %in% names(thm[[i]])) {
      thm[[i]]["fill"] <- list(NULL)
    }
  }
  thm + theme(panel.border = element_rect(fill = NA),
              legend.background = element_rect(colour = NA),
              line = element_line(colour = "black"),
              rect = element_rect(fill = "white", colour = "black"),
              text = element_text(colour = "black"))
}

# UNHCR ggplot theme
theme_unhcr <- function(base_size = 11,
                        base_family = "Lato") {
  (
    theme_foundation(base_size = base_size,
                     base_family = base_family) +
      theme(
        # main stuff
        line = element_line(colour = grey(.80, 1)),
        rect = element_rect(fill = "transparent", linetype = 0, colour = NA),
        text = element_text(colour = grey(.15, 1)),

        # titles:
        plot.title = ggplot2::element_text(hjust = 0, size = ggplot2::rel(1.50), face = "bold",
                                           margin = ggplot2::margin(b = base_size/4, unit = "pt")),
        plot.subtitle = ggplot2::element_text(hjust = 0, size = ggplot2::rel(1.20),
                                              margin = ggplot2::margin(t = base_size/4, b = base_size/3, unit = "pt")),
        plot.caption = ggplot2::element_text(hjust = 0, color =  grey(.40, 1), face = "plain", size = ggplot2::rel(.90)),

        # align title and caption to the left
        plot.title.position = "plot",
        plot.caption.position = "plot",

        # axis:
        axis.title = ggplot2::element_text(hjust = 1, color = grey(.40, 1), size = ggplot2::rel(1.0)),
        axis.line.x = ggplot2::element_line(color = "black", linetype = "solid", size = ggplot2::rel(1.2)),
        axis.ticks = ggplot2::element_blank(),
        axis.text =  ggplot2::element_text(size = ggplot2::rel(1.0)),

        # legend:
        legend.position = "top",
        legend.justification = 'right',
        legend.title = ggplot2::element_blank(),
        legend.text = ggplot2::element_text(size = ggplot2::rel(.90)),
        legend.text.align = 0,
        legend.direction = "horizontal",

        # panel:
        panel.border = ggplot2::element_blank(),
        panel.grid.minor = ggplot2::element_blank(),
        panel.grid.major.x = ggplot2::element_blank(), # Removes x gridlines.
        # In some cases you will want to change this to remove y gridlines and add x gridlines.
        panel.grid.major.y = ggplot2::element_line(linetype = "solid", size = ggplot2::rel(.50)),
        panel.spacing = grid::unit(1.5, "lines"),

        # strip:
        strip.background = ggplot2::element_rect(fill = "transparent"),
        strip.text = ggplot2::element_text(hjust = 0, size = ggplot2::rel(1.2),
                                           margin = ggplot2::margin(t = base_size/3, r = base_size/3,
                                                                    b = base_size/3, l = base_size/3, unit = "pt")),

           )
  )
}


## ToDo: ------
#  - Documentation
#  - Fix example

# - ...

## eof. ----------
