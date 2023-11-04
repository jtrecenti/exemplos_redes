library(shiny)
library(ggplot2)
library(bslib)

ui <- page_sidebar(

  title = "Título",
  # card da sidebar
  sidebar = sidebar(
    selectInput(
      inputId = "cut",
      label = "Tipo de diamante",
      choices = unique(diamonds$cut)
    )
  ),

  # card do gráfico
  card(
    card_header("Gráfico"),
    card_body(
      plotOutput(
        outputId = "plot"
      )
    )
  )
)

server <- function(input, output) {

  output$plot <- renderPlot({

    diamonds |>
      dplyr::filter(cut == input$cut) |>
      ggplot() +
      geom_histogram(aes(x = carat))

  })

}

shinyApp(ui, server)
