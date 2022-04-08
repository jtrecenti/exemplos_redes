p <- dados::dados_gapminder |> 
  ggplot() +
  aes(
    expectativa_de_vida, 
    log10(pib_per_capita), 
    colour = continente
  ) +
  geom_point(show.legend = FALSE) +
  facet_wrap(~continente) +
  theme_minimal(15)
p
anim <- p +
  # Aqui começa o gganimate
  labs(
    title = 'Ano: {frame_time}', 
    x = 'Expectativa de vida', 
    y = 'log10(Pib per capita)'
  ) +
  gganimate::transition_time(ano)

gganimate::animate(
  anim, 
  nframes = 20,
  width = 800
)
