
library(shiny)

ui <- fluidPage(

    textInput("name", "Name", placeholder = "Your name")

)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
