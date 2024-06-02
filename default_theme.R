library(ggplot2)
library(ggthemes)

## CREATE A DEFAULT THEME

theme_bw <- function(base_size = 11, base_family = "",
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {
  # Starts with theme_grey and then modify some parts
  theme_grey(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  ) %+replace%
    theme(
      # white background and dark border
      panel.background = element_rect(fill = "white", colour = NA),
      panel.border     = element_rect(colour = "grey20"),
      # make gridlines dark, same contrast with white as in theme_grey
      panel.grid = element_line(colour = "grey92"),
      panel.grid.minor = element_line(linewidth = rel(0.5)),
      # contour strips to match panel contour
      strip.background = element_rect(fill = "grey85", colour = "grey20"),
      
      complete = TRUE
    )
}

default_theme = theme_bw() +
  theme(
    plot.margin=grid::unit(c(0,0,0,0), "mm"),
    legend.position="none",
    panel.border = element_blank(),
    axis.text = element_blank(),
    axis.title = element_blank(),
    axis.ticks = element_blank(),
    axis.ticks.length = unit(0, "pt"),
    panel.spacing.x=unit(0, "lines"),
    panel.spacing.y=unit(0, "lines"),
    panel.background = element_rect(fill = "transparent"), # bg of the panel
    plot.background = element_rect(fill = "transparent", color = NA), # bg of the plot
    panel.grid = element_blank(), # get rid of major grid
    panel.grid.major = element_blank(), # get rid of major grid
    panel.grid.minor = element_blank(), # get rid of minor grid
    legend.background = element_rect(fill = "transparent"), # get rid of legend bg
    legend.box.background = element_rect(fill = "transparent"),
    text = element_text(family = "Calibri", size = 10/.pt)
  )

## CGD Color Palette
## PRIMARY
teal <- "#0B4C5B"
gold <- "#FFB52C"
teal_gray <- "#85A5AD"
light_teal <- "#006970"
cream <- "#F3F6F7"
dark_gray <- "#394649"
teal_black <- "#1A272A"

## SECONDARY
blue <- "#2D99B5"
light_blue <- "#BFDEE0"
light_gold <- "#FEE8BF"
light_gray <-  "#DFE0E2"
red <- "#D15553"
green <- "#00896C"