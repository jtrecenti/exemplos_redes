dados::diamante |>
  ggplot() +
  aes(
    x = preco, 
    y = corte, 
    fill = corte
  ) +
  ggridges::geom_density_ridges(alpha = .6)
