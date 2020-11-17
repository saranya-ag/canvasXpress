library(shiny)
library(htmlwidgets)
library(canvasXpress)
library(dplyr)

source("./customPlots.R")
exData <- readRDS("./exData.rds")


shinyServer(function(input, output) {
    ds1 <- reactive({
        data <- exData$contrasts[[input$contrast]]
        rownames(data) <- data.frame(id = rownames(data), stringsAsFactors = F) %>%
            left_join(exData$varAnnot, by = "id") %>%
            pull(syn)
        data
    })

    ds2 <- reactive({
        data <- exData$contrasts[[input$compare]]
        rownames(data) <- data.frame(id = rownames(data), stringsAsFactors = F) %>%
            left_join(exData$varAnnot, by = "id") %>%
            pull(syn)
        data
    })

    output$profilePlot <- renderCanvasXpress({
        profilePlot(ds1(),
                    title = "Profile Plot",
                    subtitle = paste(input$contrast, sep = ""))
    })

    output$genePlot <- renderCanvasXpress({
        sel = input$genes
        if (!is.null(sel)) {
            sel_ids <- exData$varAnnot[exData$varAnnot$syn %in% sel, ]

            dat <- exData$Log2CPM
            dat <- dat[rownames(dat) %in% sel_ids$id, , drop = FALSE]
            rownames(dat) <- sel_ids$syn[match(rownames(dat), sel_ids$id)]

            des <- exData$smpAnnot$ReplicateGroup

            genePlot(dat, des, title = "Expression Plot", subtitle = NULL)
        }
    })

    output$volcanoPlot <- renderCanvasXpress({
        volcanoPlot(ds1(),
                    title = "Volcano Plot",
                    subtitle = NULL)
    })

    output$comparePlot <- renderCanvasXpress({
        cn1 <- ds1()
        cn2 <- ds2()
        cp <- data.frame(cbind(
            c1 = cn1$logFC,
            c2 = cn2$logFC,
            xp = cn1$P.Value,
            yp = cn2$P.Value
        ))
        rownames(cp) <- rownames(cn1)
        colnames(cp)[1] = paste(input$contrast, sep = "")
        colnames(cp)[2] = paste(input$compare,  sep = "")
        comparePlot(cp,
                    title = "Compare/Contrast",
                    subtitle = paste(paste0(input$contrast), "vs", paste0(input$compare), sep = " "))
    })

    output$selectGenes <- renderUI({
        selectizeInput("genes",
                       "Select Gene(s)",
                       rownames(ds1()),
                       multiple = TRUE,
                       selected = rownames(ds1())[c(1, 2)])
    })

})
