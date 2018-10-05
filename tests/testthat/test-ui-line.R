context("canvasXpress Web Charts - Line")


test_that("cXline1", {
    result <- cXline1()
    check_ui_test(result)
})

test_that("cXline2", {
    result <- cXline2()
    check_ui_test(result)
})

test_that("cXline3", {
    result <- cXline3()
    check_ui_test(result)
})
