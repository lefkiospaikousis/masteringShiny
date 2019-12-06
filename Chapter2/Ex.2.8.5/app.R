
library(shiny) # err1


library(ggplot2)

datasets <- data(package = "ggplot2")$results[, "Item"]

ui <- fluidPage(
  
  selectInput("dataset", "Dataset", choices = datasets),
  
  verbatimTextOutput("summary"),
  
  plotOutput("plot") #e rr2
  #tableOutput("plot")
)

server <- function(input, output, session) {
  
  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  
  #output$summmry <- renderPrint({  # err 3 typo
  output$summary <- renderPrint({
    summary(dataset())
  })
  
  output$plot <- renderPlot({
    plot(dataset()) # err 4, needs dataset(). call the reactive element as a function
  })
  
}

shinyApp(ui, server) # er