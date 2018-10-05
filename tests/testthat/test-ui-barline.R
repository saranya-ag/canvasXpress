context("canvasXpress Web Charts - BarLine")


test_that("cXbarline1", {
    result <- cXbarline1()
    check_ui_test(result)
})

test_that("cXbarline2", {
    result <- cXbarline2()
    check_ui_test(result)
})

test_that("cXbarline3", {
    result <- cXbarline3()
    check_ui_test(result)
})
