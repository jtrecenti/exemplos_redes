library(ggplot2)
dados::pinguins |> 
  ggplot(aes(
    massa_corporal, 
    comprimento_bico, 
    colour = ilha
  )) +
  geom_point(size = 3) +
  labs(title = "Os Simpsonnsss") +
  tvthemes::scale_color_simpsons() +
  tvthemes::theme_simpsons(
    "Akbar", 
    title.size = 50
  ) 
