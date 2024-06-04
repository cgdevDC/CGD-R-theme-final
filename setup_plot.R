setup_plot = function(
) {
  
  # Create default theme for plots
  default_theme = theme_bw() +
    theme(
      plot.margin=grid::unit(c(4,4,2,4), "mm"),
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
      #legend.title = element_blank(),
      #legend = element_blank(),
      legend.position = "none",
      plot.title.position = "plot",
      plot.title = element_text(margin=margin(0,0,15,0)),
    )
  assign("default_theme", default_theme, envir = .GlobalEnv)
}

add_grid_lines = function(horizontal = FALSE, vertical = FALSE) {

  if(horizontal == TRUE & vertical == FALSE) {
    theme(panel.grid.major.y = element_line(color = light_gray,
                                            linewidth = 0.3527777778))
  } else if (horizontal == FALSE & vertical == TRUE) {
    theme(panel.grid.major.x = element_line(color = light_gray,
                                            linewidth = 0.3527777778))
  } else if (horizontal == TRUE & vertical == TRUE) {
    theme(panel.grid.major.x = element_line(color = light_gray,
                                            linewidth = 0.3527777778),
          panel.grid.major.y = element_line(color = light_gray,
                                            linewidth = 0.3527777778)
          )
  }
}

add_legend = function() {
  theme(legend.position= "bottom",
        legend.text = element_text(family = "Sofia Pro Light Italic",
                                   size = 12,
                                   colour = teal_black),
        legend.title = element_blank(),
  )
}