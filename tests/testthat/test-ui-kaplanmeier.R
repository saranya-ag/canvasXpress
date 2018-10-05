context("canvasXpress Web Charts - Kaplanmeier")
load_ui_functions()


test_that("cXkaplanmeier1", {
    result <- cXkaplanmeier1()
    check_ui_test(result)
})

test_that("cXkaplanmeier2", {
    result <- cXkaplanmeier2()
    check_ui_test(result)
})
