#' Calcula a rota entre dois pontos usando o Open Source 
#' Routing Machine (OSRM)
calcular_rota <- function(origem, destino) {
  url <- paste0(
    "http://router.project-osrm.org/route/v1/driving/",
    origem$lon, ",", origem$lat,
    ";", destino$lon, ",", destino$lat,
    "?overview=full"
  )
  rjson::fromJSON(file = url)
}

end1 <- tibble::tibble(lon = -46.676, lat = -23.598)
end2 <- tibble::tibble(lon = -38.484, lat = -3.734)

calcular_rota(
  end1, end2)$routes[[1]]$distance
