library(shiny)
library(ggplot2)
library(gridlayout)
library(bslib)

ui <- grid_page(
  layout = c(
    "header  header",
    "sidebar plot  "
  ),
  row_sizes = c(
    "120px",
    "1fr"
  ),
  col_sizes = c(
    "390px",
    "1fr"
  ),
  gap_size = "1rem",
  grid_card(
    area = "sidebar",
    card_header("Opções"),
    card_body(
      selectInput(
        inputId = "cut",
        label = "Tipo de diamante",
        choices = unique(diamonds$cut)
      ),
      checkboxInput(
        inputId = "myCheckboxInput",
        label = "Checkbox Input",
        value = FALSE
      ),
      selectInput(
        inputId = "mySelectInput",
        label = "Select Input",
        choices = list("choice a" = "a", "choice b" = "b")
      ),
      sliderInput(
        inputId = "inputId",
        label = "Slider Input",
        min = 0,
        max = 10,
        value = 5,
        width = "100%"
      )
    )
  ),
  # card do título,,,
  grid_card_text(area = "header", content = "Título"),
  # card do gráfico,,,
  grid_card(
    area = "plot",
    card_header("Gráfico"),
    card_body(plotOutput(outputId = "plot"))
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


