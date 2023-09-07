
View(dados::diamante)
tibble::view(dados::diamante)

dados::diamante |>
  dplyr::filter(corte == "Ideal") |>
  dplyr::count(transparencia) |>
  View("diamante_count")
