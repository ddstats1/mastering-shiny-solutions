
library(shiny)

ui <- fluidPage(
  
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  
  sliderInput("y", label = "And y is", min = 1, max = 50, value = 30),
  
  "then x times y is",
  
  textOutput("product")
  
)


server <- function(input, output, session) {
  
  # create reactive expression
  x_times_y <- reactive(input$x * input$y)
  
  output$product <- renderText({ 
    
    x_times_y()
    
  })
}


shinyApp(ui, server)
