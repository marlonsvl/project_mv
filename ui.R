library(shiny)

shinyUI(fluidPage(
  headerPanel("Total body water "),
  
  sidebarLayout(
    sidebarPanel(
      helpText("HOMEOSTASIS & BASIC MECHANISMS. Calculus of body fluid components.
               Total body water = ICF + ECF where ECF = IS + IVS"),
      
      numericInput('weight', 'Weight kg', 64, min = 0, max = 500, step = 1), 
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"), 
      h4('Total body water (L)'), 
      verbatimTextOutput("prediction")
    )
  )
  
))