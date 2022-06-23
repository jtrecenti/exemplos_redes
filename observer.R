  library(shiny)
  
  ui <- fluidPage(
    shinyjs::useShinyjs()
  )
  
  server <- function(input, output, session) {
    
    observe({
      
      invalidateLater(3000)
      
      shinyjs::alert(paste("Olá", runif(1)))
      
    })
  }
  
  shinyApp(ui, server)