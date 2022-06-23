library(shiny)
library(bs4Dash)

shiny::shinyApp(
  ui = bs4DashPage(
    enable_preloader = TRUE,
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(),
    controlbar = bs4DashControlbar(),
    footer = bs4DashFooter(),
    title = "test",
    body = bs4DashBody()
  ),
  server = function(input, output) {}
)
