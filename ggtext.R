dados::pinguins |> 
  ggplot(aes(
    massa_corporal, 
    comprimento_bico)
  ) +
  geom_point() +
  labs(
    title = "Essa *base* é sobre <b>pinguins</b><img src='https://cdn.icon-icons.com/icons2/195/PNG/64/OS_Linux_23399.png'>"
  ) +
  theme(
    plot.title = ggtext::element_markdown(size = 30)
  )
