# helper functions for tests
library(htmlwidgets)
library(canvasXpress.data)


if (interactive()) {
    library(testthat)
    library(canvasXpress)

    source("tests/cX-ui-functions.R")
} else {
    source("../cX-ui-functions.R")
}


check_ui_test <- function(result){
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
}
