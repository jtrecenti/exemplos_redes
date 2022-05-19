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
  html_element(xpath = "/html/body/div/div/div[1]/div[3]/main/div[2]/div[3]/div[1]/table/tbody/tr[6]/td[3]") |> 
  html_text()
