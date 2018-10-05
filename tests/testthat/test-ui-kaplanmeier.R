context("canvasXpress Web Charts - Kaplanmeier")


test_that("cXkaplanmeier1", {
    result <- cXkaplanmeier1()
    check_ui_test(result)
})

test_that("cXkaplanmeier2", {
    result <- cXkaplanmeier2()
    check_ui_test(result)
})
