
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Calculate your BMI!"),
  
  # Sidebar with numeric inputs for user height and weight
  sidebarPanel(
    h6("Enter the following information to calculate your BMI."),
    numericInput(inputId="weightInput",label="Weight in lbs: ",value=175),
    numericInput(inputId="heightInput",label="Height in Inches: ",value=75),
    submitButton("Submit"),
    br(),
    br(),
    h4("Caution:"),
    h5("This BMI calculator is meant to be used as a rule of thumb. The results of this application should not be taken as professional medical advice.")
  ),
  
  mainPanel(
    h3("Your BMI is:"),
    h2(textOutput("bmi")),
    br(),
    br(),
    br(),
    h5("BMI Categories:"),
    div("Underweight = <18.5"),
    div("Normal weight = 18.5–24.9 "),
    div("Overweight = 25–29.9 "),
    div("Obesity = BMI of 30 or greater"),
    div("Source:"),
    div("http://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmicalc.htm")
    )
  )
)
