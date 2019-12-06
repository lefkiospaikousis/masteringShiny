library(shiny)

ui <- fluidPage(
  
  # Define the inputs
  sliderInput("x", "If x is", 1, 50, 10)
  , sliderInput("y", "and y is ", 1, 50, 12)
  
  # Define plain text
  , " then x multiplied by y is:"
  
  # Define the outputs
  , textOutput("result")
)

server <- function(input, output, session){
  
  
   output$result <- renderText({
     product <- input$x * input$y
       
       product
      })
}


shinyApp(ui, server)

