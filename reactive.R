library(shiny)

ui <- fluidPage(
  
  plotOutput("grafico"),
  tableOutput("tabela")
  
)

server <- function(input, output, session) {
  
  dados <- reactive({
    invalidateLater(3000)
    shinipsum::random_table(ncol = 3, nrow = 10)
  })
  
  output$grafico <- renderPlot(plot(dados()))
  output$tabela <- renderTable(dados())
  
}

shinyApp(ui, server)