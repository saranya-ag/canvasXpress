context("canvasXpress Web Charts - Bubble")
ifelse(interactive(), source("tests/cX-ui-functions.R"), source("../cX-ui-functions.R"))


test_that("cXbubble1", {
    result <- cXbubble1()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXbubble2", {
    result <- cXbubble2()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})

test_that("cXbubble3", {
    result <- cXbubble3()
    if (interactive()) { print(result) }
    
    expect_s3_class(result, "canvasXpress")
    expect_s3_class(result, "htmlwidget")
})
