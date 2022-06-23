library(shiny)
library(auth0)

ui <- fluidPage(
  h1("Autenticado!")
)

server <- function(input, output, session) {
  
}

options(shiny.port = 8080)
auth0::shinyAppAuth0(ui, server)