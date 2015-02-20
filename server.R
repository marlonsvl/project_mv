library(shiny)
library(maps)
library(mapproj)
source("helpers.R")
counties <- readRDS("data/counties.rds")
totalbodywater <- function(weight) weight * 0.6
shinyServer(function(input, output) {
  output$inputValue <- renderPrint({input$weight})
  output$prediction <- renderPrint({totalbodywater(input$weight)}) 
})
