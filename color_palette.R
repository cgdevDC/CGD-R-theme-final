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

categorical <- c(light_teal, gold, blue, light_blue, light_gold, teal_gray,
                 dark_gray, light_gray)

sequential1 <- light_teal
sequential2 <- c(light_blue, light_teal)
sequential3 <- c(light_gray, light_blue, light_teal)
sequential4 <- c(light_gray, light_blue, light_teal, dark_gray)
sequential8 <- c(light_gray, teal_gray, light_blue, blue, light_teal,
                 teal, dark_gray, teal_black)
sequential <- list(sequential1, sequential2, sequential3, sequential4, sequential8)

polar1 <- light_teal
polar2 <- c(light_teal, gold)
polar3 <- c(light_teal, teal_gray, gold)
polar4 <- c(light_teal, teal_gray, light_gold, gold)
polar5 <- c(light_teal, teal_gray, light_blue, light_gold, gold)
polar <- list(polar1, polar2, polar3, polar4, polar5)

stoplight <- c(green, gold, red)

cdg_colors <- list(
  categorical = c(teal, gold, teal_gray, light_teal, cream),
  sequential = sequential3
)

# cdg_palette <- function(palette_name) {
#   if(palette_name == "categorical") {
#     pal <- cdg_colors[["categorical"]]
#   }
#   return(pal)
# }

cdg_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)
  
  pal <- cdg_colors[[name]]
  if (type == "continuous" && name == "sequential") {
    pal <- cdg_colors[["sequential"]]
  }
  
  if (is.null(pal))
    stop("Palette not found.")
  
  if (missing(n)) {
    n <- length(pal)
  }
  
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }
  
  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
