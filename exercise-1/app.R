# Exercise 1: Building a user interface

# Load the `shiny` package (install it in the R terminal if you haven't already)
library(shiny)
library(httpuv)

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` 
# layout, which should be passed the following:
ui <- fluidPage(


  # A top level header: "First Shiny Website"
  h1("First Shiny Website"),

  # A Paragraph, describing your excitement: include some `strong` text
  p("Today I will be creating my first shiny page. It is for my info 201 class."),

  # An image with this `src`
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  img("Me in Info", src = "https://fthmb.tqn.com/M1ISdSdfLsU36nAuILe3YlFcY1w=/400x400/filters:fill(auto,1)/success-56a9fd1f3df78cf772abee09.jpg"),
  
  
  # Another paragraph about a slider: include some `em` text
  p("Wow my first slider is about to appear. I", em("wished"), "it was hamburger sliders"),
  
  # A slider with an appropriate label, min of 10, max of 100, value of 50  
  sliderInput(
    "slider",
    "My First Slider", min = 10, max = 100, value = 50, step = 10
  )
)


# Define a `server` function that accepts an input and an output
# At this point, don't do anything in the function
# This function should perform the following:
server <- function(input, output){}

# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)