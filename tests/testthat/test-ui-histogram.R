context("canvasXpress Web Charts - Histogram")


test_that("cXhistogram1", {
    result <- cXhistogram1()
    check_ui_test(result)
})

test_that("cXhistogram2", {
    result <- cXhistogram2()
    check_ui_test(result)
})

test_that("cXhistogram3", {
    result <- cXhistogram3()
    check_ui_test(result)
})
