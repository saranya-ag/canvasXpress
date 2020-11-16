library(shiny)
library(htmlwidgets)
library(canvasXpress)
library(dplyr)

source("./customPlots.R")
exData <- readRDS("./exData.rds")


shinyServer(function(input, output) {
    ds1 <- reactive({
        exData$contrasts[[input$contrast]]
    })

    ds2 <- reactive({
        exData$contrasts[[input$compare]]
    })

    output$profilePlot <- renderCanvasXpress({
        profilePlot(ds1(),
                    title = "Profile Plot",
                    subtitle = paste(input$contrast, sep = ""))
    })

    output$genePlot <- renderCanvasXpress({
        sel = input$genes
        if (!is.null(sel)) {
            dat <- exData$Log2CPM
            dat <- dat[rownames(dat) %in% sel, , drop = FALSE]
            ant <- exData$varAnnot
            rownames(dat) <- as.vector(ant[ant$id %in% sel, , drop = FALSE]$syn)
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
                    title = paste("Compare/Contrast", paste0(input$contrast),
                                  "vs", paste0(input$compare), sep = " "),
                    subtitle = NULL)
    })

    output$selectGenes <- renderUI({
        d <- data.frame(id = rownames(ds1()), stringsAsFactors = F) %>%
            left_join(exData$varAnnot, by = "id")

        sel <- d$id %>% as.character()
        names(sel) <- d$syn

        selectizeInput("genes",
                       "Select Gene(s)",
                       sel,
                       multiple = TRUE,
                       selected = sel[1])
    })

})
