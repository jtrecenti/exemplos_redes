library(httr)
library(rvest)
u <- paste0(
  "https://pt.wikipedia.org/",
  "wiki/Lista_de_pa%C3%ADses",
  "_por_popula%C3%A7%C3%A3o"
)

u |> 
  GET() |> 
  read_html() |> 
  html_table()

