#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to produce a plot
shinyServer(function(input, output) {

    output$carsPlot <- renderPlot({

        x <- mtcars[, as.numeric(input$x)]
        y <- mtcars[, as.numeric(input$y)]
        xlab = colnames(mtcars)[as.numeric(input$x)]
        ylab = colnames(mtcars)[as.numeric(input$y)]
        plot(x, y, xlab = xlab, ylab = ylab, main = "Motor Trend Car Road Tests")

    })

})
