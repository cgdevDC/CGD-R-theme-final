library(ggplot2)
library(ggthemes)
source("setup_plot.R")

setup_plot()

mtcars2 <- within(mtcars, {
  vs <- factor(vs, labels = c("V-shaped", "Straight"))
  am <- factor(am, labels = c("Automatic", "Manual"))
  cyl  <- factor(cyl)
  gear <- factor(gear)
})

p1 <- ggplot(mtcars2) +
  geom_point(aes(x = wt, y = mpg, colour = gear)) +
  labs(
    title = "Fuel economy declines as weight increases",
    #subtitle = "(1973-74)",
    #caption = "Data from the 1974 Motor Trend US magazine.",
    #tag = "Figure 1",
    x = "Weight (1000 lbs)",
    y = "Fuel economy (mpg)",
    colour = "Gears"
  )

p1 + theme_gray() # the default
p1 + default_theme

sample_df = data.frame(dose=c("D0.5", "D1", "D2"),
                       len=c(4.2, 10, 29.5))

p2 <- ggplot(data=sample_df, aes(x=dose, y=len)) +
  geom_bar(stat="identity",
           fill = teal,
           width = 0.5) +
  geom_text(aes(label=len), 
            family = "Sofia Pro Light Italic",
            size = 12,
            size.unit = "pt",
            vjust = -0.5 ) +
  labs(
    title = "Number of cars based on number of cylinders",
    x = "Dosage",
    y = "Tooth length",
  ) +
  scale_y_continuous(expand = expansion(mult = c(0,0.1)))
p2 + default_theme