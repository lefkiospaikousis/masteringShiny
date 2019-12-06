library(shiny)

ui <- fluidPage(
  
  # Define the inputs
  sliderInput("x", "If x is", 1, 50, 10)
  
  # Define plain text
  , " then x multiplied by 5 is:"
  
  # Define the outputs
  , textOutput("result")
)

server <- function(input, output, session){
  
  # doen not work! WHY??
  output$result <- renderText({
    
    x
  })
}


shinyApp(ui, server)

