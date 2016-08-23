#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Coursera - Developing Data Products- Course Project
#
# This app was developed to help people keep themselves hydrated  

library(shiny)
library(markdown)

shinyUI(navbarPage("How much water I need to drink every day?",
                   tabPanel("Calc panel",
                            
                            # Sidebar
                            sidebarLayout(
                                 sidebarPanel(
                                      helpText("Calculate the right quantity of water to drink based on You!"),
                                      radioButtons('unitamisura', 'Units:', c("Metric"=1, "US"=2), selected = 1),
                                      numericInput('peso', 'Weight (kg/lbs):', 70, min = 50, max = 300),
                                      sliderInput('livattiv', 'Activity level (min/day):', min=0, max=1440, value= 60, step=30),
                                      submitButton('Calculate ')
                                       ),
                                 
                            
                                 mainPanel(
                                      h4('The water quantity to drink each day in ounces is:'), 
                                      verbatimTextOutput("acqua"),
                                      h4('or in liters is:'), 
                                      verbatimTextOutput("acqual")
                                          )
                            )
                   ),
                   tabPanel("About",
                            mainPanel(
                                 includeMarkdown("about.md")
                            )
                   )
)
)   