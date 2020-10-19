## ToDo: ------
#  - Margin
#  - Documentation


library(extrafont)
library(ggplot2)
loadfonts(device = "win")
# sample data for plot ----
points <- 
  data.frame(
    x = rep(1:10,3), 
    y = rep(1:10,3), 
    z = sort(rep(letters[1:2], 15)),
    w = rep(letters[3:4], 15)
  )

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

theme_clean <- function(base_size = 12,
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
        plot.title = ggplot2::element_text(hjust = 0, size = ggplot2::rel(1.50), face = "bold"),
        plot.subtitle = ggplot2::element_text(hjust = 0, size = ggplot2::rel(1.20)),
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

        # strip:
        strip.background = ggplot2::element_rect(fill = grey(.95, 1), color = grey(.05, 1), size = ggplot2::rel(.90)),
        strip.text = ggplot2::element_text(hjust = 0, size = ggplot2::rel(1.2)),

           )
  )
}



# ggplot using many theme options ----
ggplot(data = points, 
       mapping = aes(x = x, y = y, col = factor(x))) + 
  geom_point(size = 5) + 
  facet_grid(w ~ z, switch = "y") +
  theme_clean() +
  labs(title = "Test title",
       subtitle = "Test subtitle",
       x = "my x axis",
       y = "my y axis",
       caption = "this is a caption",
       col = "Renamed Legend") 