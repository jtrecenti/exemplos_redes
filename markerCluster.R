library(leaflet)
dados::aeroportos |>
  leaflet() |> 
  addTiles() |> 
  addMarkers()

dados::aeroportos |>
  leaflet() |> 
  addTiles() |> 
  addMarkers(
    clusterOptions = markerClusterOptions()
  )
