context("canvasXpress Web Charts - StackedLine")


test_that("cXstackedline1", {
    result <- cXstackedline1()
    check_ui_test(result)
})

test_that("cXstackedline2", {
    result <- cXstackedline2()
    check_ui_test(result)
})
