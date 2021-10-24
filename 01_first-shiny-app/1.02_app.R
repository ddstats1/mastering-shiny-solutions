
library(shiny)

ui <- fluidPage(
  
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  
  "then x times 5 is",
  
  textOutput("product")
  
)


server <- function(input, output, session) {
  
  # create reactive expression
  times_5 <- reactive(input$x * 5)
  
  output$product <- renderText({ 
    
    times_5()
    
  })
}


shinyApp(ui, server)
