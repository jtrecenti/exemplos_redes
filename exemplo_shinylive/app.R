library(shiny)

ui <- fluidPage(
  titlePanel("Título"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "cyl",
        label = "Cilindros",
        choices = unique(mtcars$cyl)
      )
    ),
    mainPanel(
      plotOutput(outputId = "plot")
    )
  )
)

server <- function(input, output) {

  output$plot <- renderPlot({

    hist(mtcars$mpg[mtcars$cyl == input$cyl])

  })

}

shinyApp(ui, server)
