library(shiny)

ui <- fluidPage(
  
  
  textInput(
    inputId = "name"
    , label = "What's your name?"
  )
  
  , verbatimTextOutput("name")
  

)


server <- function(input, output,session){
  
  output$name <- renderText({
    
    paste0("Hello ", input$name)
  })
}


shinyApp(ui, server)


  
