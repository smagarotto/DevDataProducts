#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Coursera - Developing Data Products- Course Project
#
# This app was developed to help people keep themselves hydrated  

library(shiny)

wr <-function(unitamisura,peso,livattiv) 
{
     if (unitamisura == 1) {
          round((peso * 2.2 * 2 / 3) + (livattiv / 30 * 12))
     } else {
          round((peso * 2 / 3) + (livattiv / 30 * 12))
     }
}


wrl <-function(unitamisura,peso,livattiv) 
{
     if (unitamisura == 1) {
          round((((peso * 2.2 * 2 / 3) + (livattiv / 30 * 12)) * 30 / 1000),1)
     } else {
          round((((peso * 2 / 3) + (livattiv / 30 * 12)) * 30 / 1000),1)
     }
}


shinyServer(function(input, output) 
     {
      output$unitamisura <- renderPrint({input$unitamisura})
      output$peso <- renderPrint({input$peso})
      output$livattiv <- renderPrint({input$livattiv})
      output$acqua <- renderPrint({wr(input$unitamisura,input$peso,input$livattiv)})
      output$acqual <- renderPrint({wrl(input$unitamisura,input$peso,input$livattiv)})
})
          





           