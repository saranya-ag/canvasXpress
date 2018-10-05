context("canvasXpress Web Charts - Contour")


test_that("cXcontour1", {
    result <- cXcontour1()
    check_ui_test(result)
})
