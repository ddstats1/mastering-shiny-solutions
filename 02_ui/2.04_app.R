
library(shiny)

choices <- list("One" = list(1, 2, 3),
                "Two" = list(4, 5, 6))

ui <- fluidPage(
  
  selectInput("num", "Select somethin boyyy", choices = choices)
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
