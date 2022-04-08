library(ggplot2)
dados::dados_starwars |> 
  ggplot(aes(
    massa, 
    altura)
  ) +
  geom_point() +
  annotate(
    "label", 
    x = 1250, 
    y = 185, 
    label = "Jabba the Hutt"
  )

