
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

bmiCalc <- function(weight,height) {
  weightCalc <- weight * 0.45
  heightCalc <- (height * 0.025)^2
  
  1.0 * weightCalc / heightCalc
}

shinyServer(function(input, output) {
  
  height <- reactive(input$heightInput)
  weight <- reactive(input$weightInput)
  
  output$bmi <- renderText({bmiCalc(weight(),height())})
  
})
