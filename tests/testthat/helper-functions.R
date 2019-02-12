# helper functions for tests
library(htmlwidgets)
library(vdiffr)


if (file.exists("../cX-ui-functions.R")) {
    source("../cX-ui-functions.R")
} else {
    source("tests/cX-ui-functions.R")
}


check_ui_test <- function(result){
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
}

check_ui_test2 <- function(result){
    if (interactive()) { print(result) }

    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
    expect_doppelganger("my test area", fig = result)
}
