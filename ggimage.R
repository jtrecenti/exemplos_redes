library(dados)
library(ggplot2)

p <- abjData::muni |> 
  ggplot() +
  aes(lon, lat) +
  geom_point(alpha = .2) +
  coord_fixed() +
  theme_minimal()

p

tb <- tibble::tibble(
  lat = max(abjData::muni$lat, na.rm = TRUE) - 2,
  lon = max(abjData::muni$lon, na.rm = TRUE) - 4,
  image = "https://abj.org.br/assets/logo-home.png"
)

p +
  ggimage::geom_image(aes(image = image), data = tb, size = .25)
  
