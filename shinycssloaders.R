library(shiny)

ui <- fluidPage(
  shinycssloaders::withSpinner(
    plotOutput("grafico")
  )
)

server <- function(input, output, session) {
  output$grafico <- renderPlot({
    Sys.sleep(5)
    hist(rnorm(1000))
  })
}

shinyApp(ui, server)