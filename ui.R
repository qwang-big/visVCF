library(shiny)
library(ggplot2)

load('res.rda')

fluidPage(

  titlePanel("tRNA Explorer"),

  sidebarPanel(
		selectInput("tRNA", "Choose tRNA:",
		                    choices = unique(unname(info)))
  ),

  mainPanel(
    plotOutput('plot'),
		br(),
		br(),
		br(),
		br(),
		br(),
    plotOutput('plot2')
  )
)
