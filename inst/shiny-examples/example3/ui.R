library(shiny)
library(canvasXpress)

# source("./customCanvasXpress.R")
exData <- readRDS("./exData.rds")


shinyUI(fluidPage(
    titlePanel("IPF Fibroblast data"),
    mainPanel(
        fluidRow(
            column(6,
                h4("Explore Constrasts in Project"),
                p("Choose a contrast to update the visualizations")),
            column(6,
                h4("Explore Genes in Project"),
                p("Choose a gene to update plot"))),
        hr(),
        fluidRow(
            column(6,
                selectInput(
                    "contrast",
                    "Select Contrast",
                    names(exData$contrasts),
                    selectize = FALSE),
                p("Profile Plot"),
                canvasXpressOutput("profilePlot")),
            column(6,
                uiOutput("selectGenes"),
                p("Gene Plot"),
                canvasXpressOutput("genePlot"))),
        fluidRow(
            column(6,
                p(""),
                canvasXpressOutput("volcanoPlot")),
            column(6,
                selectInput(
                    "compare",
                    "Select Contrast to Compare",
                    names(exData$contrasts),
                    selectize = FALSE,
                    selected = names(exData$contrasts)[2]),
                canvasXpressOutput("comparePlot")))
    )
))
