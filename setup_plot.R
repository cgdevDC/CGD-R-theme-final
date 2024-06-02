setup_plot = function(
) {
  
  # Create default theme for plots
  default_theme <- theme_bw() +
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
  
  assign("default_theme", default_theme, envir = .GlobalEnv)
}