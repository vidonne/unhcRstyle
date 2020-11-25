## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  echo = TRUE,
  comment = "#>"
)

## ----message=FALSE, warning=FALSE---------------------------------------------
library(unhcRstyle)
library(ggplot2)
library(tidyverse)
library(unhcrdatapackage)
update_geom_font_defaults()



## -----------------------------------------------------------------------------
# make fake data for plots ----
bar <- count(mpg, class)

## chart
g_bars <- ggplot(bar, aes(class, n)) + 
          geom_col( )  +
          geom_text(aes(label=n), nudge_y = 3) +
            labs(title="Title: Main Message supported by the chart (less than 80 char)",
                 subtitle="Subtitle: Interpretation on what is displayed",
                 x="Title for X axis - limit to less than 40 char", 
                 y="Title for X axis",
                 caption="Source of data / Reference / Disclaimer")
g_bars

## -----------------------------------------------------------------------------
g_bars <- ggplot(bar, aes(x= reorder(class, n), y = n)) +
          geom_col( fill = unhcr_blue)  +
          geom_text(aes(label=n), nudge_y = 3) +
          coord_flip() +
            labs(title="Title: Main Message supported by the chart (less than 80 char)",
                 subtitle="Subtitle: Interpretation on what is displayed",
                 x="Title for X axis - limit to less than 40 char", 
                 y="Title for X axis",
                 caption="Source of data / Reference / Disclaimer") +
          unhcr_theme(grid="Y")

g_bars

## -----------------------------------------------------------------------------
# make fake data for plots ----
points <- data.frame(x = 1:10, y = 1:10)

## chart
g_points <- ggplot(points, aes(x, y, col = factor(x))) + 
            geom_point(size = 5) +
            labs(x="Title for X axis", 
                 y="Title for X axis",
                 title="Main Message supported by the chart (less than 80 char)",
                 subtitle="Interpretation on what is displayed",
                 caption="Source of data / Reference")
g_points

## -----------------------------------------------------------------------------
g_points <- g_points + 
            unhcr_theme()

g_points

## -----------------------------------------------------------------------------
g_points <- g_points + 
  scale_color_discrete_unhcr(palette = "test", extend = TRUE) 
  #scale_color_discrete_unhcr(palette = "unhcr", extend = TRUE) 


g_points

