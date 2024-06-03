library(ggplot2)
library(ggthemes)

## CREATE A DEFAULT THEME

# theme_bw <- function(base_size = 11, base_family = "",
#                      base_line_size = base_size / 22,
#                      base_rect_size = base_size / 22) {
#   # Starts with theme_grey and then modify some parts
#   theme_grey(
#     base_size = base_size,
#     base_family = base_family,
#     base_line_size = base_line_size,
#     base_rect_size = base_rect_size
#   ) %+replace%
#     theme(
#       # white background and dark border
#       panel.background = element_rect(fill = "white", colour = NA),
#       panel.border     = element_rect(colour = "grey20"),
#       # make gridlines dark, same contrast with white as in theme_grey
#       panel.grid = element_line(colour = "grey92"),
#       panel.grid.minor = element_line(linewidth = rel(0.5)),
#       # contour strips to match panel contour
#       strip.background = element_rect(fill = "grey85", colour = "grey20"),
#       
#       complete = TRUE
#     )
# }

default_theme = theme_bw() +
  theme(
    plot.margin=grid::unit(c(4,4,2,4), "mm"),
    legend.position="bottom",
    panel.border = element_blank(),
    axis.text = element_text(family = "Sofia Pro Regular",
                             size = 12,
                             colour = teal_black
                             ),
    axis.title = element_text(family = "Sofia Pro Medium",
                              size = 14,
                              colour = teal),
    axis.title.y = element_text(vjust = 2),
    axis.title.x = element_text(vjust = -0.5),
    #axis.ticks = element_blank(),
    axis.ticks.length = unit(0, "pt"),
    axis.line = element_line(linewidth = 0.5, colour = teal_black),
    panel.spacing.x=unit(0, "lines"),
    panel.spacing.y=unit(0, "lines"),
    panel.background = element_rect(fill = "transparent"), # bg of the panel
    plot.background = element_rect(fill = "transparent", color = NA), # bg of the plot
    #panel.grid = element_blank(), # get rid of major grid
    panel.grid.major = element_blank(), # get rid of major grid
    panel.grid.minor = element_blank(), # get rid of minor grid
    #legend.background = element_rect(fill = "transparent"), # get rid of legend bg
    #legend.box.background = element_rect(fill = "transparent"),
    text = element_text(family = "Sofia Pro Bold", 
                        size = 18, 
                        colour = teal),
    legend.title = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(margin=margin(0,0,15,0)),
  )

