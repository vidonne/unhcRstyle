## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  echo = TRUE,
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(unhcRstyle)
library(ggplot2)
library(scales)

## -----------------------------------------------------------------------------
scales::show_col(test_pal)

## -----------------------------------------------------------------------------
scales::show_col(unhcr_pal)

## -----------------------------------------------------------------------------
scales::show_col(test_pal_cont)

## -----------------------------------------------------------------------------
scales::show_col(test_pal_div)

## -----------------------------------------------------------------------------
# make fake data for plots ----
points <- data.frame(x = 1:10, y = 1:10)

# make plots for themes ----
g_points <- ggplot(points, aes(x, y, col = factor(x))) + 
            geom_point(size = 5) +
            unhcr_theme()
g_points

## -----------------------------------------------------------------------------
distrb <- data.frame(x = rep(1:6, 10), y = rnorm(60, 0, 1))
g_distrb <- ggplot(distrb, aes(y, fill = factor(x))) + 
            geom_density() + 
            facet_wrap(. ~ x, ncol = 3) +
            unhcr_theme()
g_distrb

## -----------------------------------------------------------------------------
g_points + scale_color_discrete_unhcr(palette = "test")
g_distrb +  scale_fill_discrete_unhcr(palette = "test")

## -----------------------------------------------------------------------------
g_points + 
  scale_color_discrete_unhcr(palette = "test", extend = TRUE)

g_distrb + 
  scale_fill_discrete_unhcr(palette = "test", extend = TRUE)

## -----------------------------------------------------------------------------
points$assessment <- "neutral"
points$assessment[points$x > 5] <- "good"
points$assessment[points$x < 3] <- "bad"

ggplot(points, aes(x, y, col = assessment)) + 
  geom_point() + 
  scale_color_opinionated_unhcr(palette = "test")

## -----------------------------------------------------------------------------
g_points_cont <- ggplot(points, aes(x, y, col = x)) + 
                 geom_point(size = 5) +
                 unhcr_theme()
g_points_cont

## -----------------------------------------------------------------------------
g_points_cont + 
  scale_color_diverging_unhcr(palette = "test", midpoint = 5)

## -----------------------------------------------------------------------------
g_points_cont + 
  scale_color_continuous_unhcr(palette = "test")

