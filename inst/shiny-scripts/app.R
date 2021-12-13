library(shiny)

# Define UI for app ----
ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 100, min = 100, max = 200),
  plotOutput("hist")
)

# Define server logic
server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(n=input$num, mean = 10, sd = 2),
         xlab = "Value",
         main = "Histogram of User Input Values")
  })
}

# Create Shiny app ----
shiny::shinyApp(ui = ui, server = server)
