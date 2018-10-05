context("canvasXpress Web Charts - Sankey")


test_that("cXsankey1", {
    result <- cXsankey1()
    check_ui_test(result)
})

test_that("cXsankey2", {
    result <- cXsankey2()
    check_ui_test(result)
})

test_that("cXsankey3", {
    result <- cXsankey3()
    check_ui_test(result)
})

test_that("cXsankey4", {
    result <- cXsankey4()
    check_ui_test(result)
})
