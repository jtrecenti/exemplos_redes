library(ggplot2)
dados::pinguins |> 
  ggplot(aes(
    massa_corporal, 
    comprimento_bico, 
    colour = ilha
  )) +
  geom_point() +
  ggthemes::scale_color_excel() +
  ggthemes::theme_excel()

