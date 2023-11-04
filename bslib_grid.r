library(shiny)
library(ggplot2)
library(gridlayout)
library(bslib)

ui <- grid_page(
  layout = c(
    "header header",
    "sidebar plot  "
  ),
  # card da sidebar
  grid_card(
    area = "sidebar",
    card_header("Opções"),
    card_body(
      selectInput(
        inputId = "cut",
        label = "Tipo de diamante",
        choices = unique(diamonds$cut)
      )
    )
  ),

  # card do título
  grid_card_text(
    area = "header",
    content = "Título"
  ),

  # card do gráfico
  grid_card(
    area = "plot",
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
