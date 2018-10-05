context("canvasXpress Web Charts - StackedPercentLine")


test_that("cXstackedpercentline1", {
    result <- cXstackedpercentline1()
    check_ui_test(result)
})

test_that("cXstackedpercentline2", {
    result <- cXstackedpercentline2()
    check_ui_test(result)
})
