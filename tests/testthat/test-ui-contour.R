context("canvasXpress Web Charts - Contour")
load_ui_functions()


test_that("cXcontour1", {
    result <- cXcontour1()
    check_ui_test(result)
})
