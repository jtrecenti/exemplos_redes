## geocoding function using OSM Nominatim API
## details: http://wiki.openstreetmap.org/wiki/Nominatim
geocode_osm_cep <- function(cep = NULL) {
  if (suppressWarnings(is.null(cep)))
    return(data.frame())
  
  d <- jsonlite::fromJSON(paste0(
    "http://nominatim.openstreetmap.org/search?country=Brasil&postalcode=",
    cep, "&format=json&addressdetails=0&limit=1"
  ))
  
  if (length(d) == 0) {
    return(data.frame())
  }
  
  return(tibble::tibble(lon = as.numeric(d$lon), lat = as.numeric(d$lat)))
}

fortaleza <- geocode_osm_cep("60175422")
insper <- geocode_osm_cep("04546042")
