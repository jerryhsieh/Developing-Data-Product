library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Year 2014 PM 2.5 Status in One of Taiwan City"),
  
    sidebarPanel(
        sliderInput('standard', 'PM 2.5 standard', value=15, min=5, max=25, step=0.5,)
    ),
    mainPanel(
        plotOutput('hist')
    )
  )
)

