library(ggplot2)
dados::pinguins |> 
  ggplot(aes(
    massa_corporal, 
    comprimento_bico, 
    colour = ilha)
  ) +
  geom_point(size = 3) +
  ghibli::scale_color_ghibli_d(
    "PonyoMedium", 
    direction = -1
  ) +
  theme_minimal()

