context("canvasXpress Web Charts - Map")
load_ui_functions()


test_that("cXmap1", {
    result <- cXmap1()
    check_ui_test(result)
})

test_that("cXmap2", {
    result <- cXmap2()
    check_ui_test(result)
})

test_that("cXmap3", {
    result <- cXmap3()
    check_ui_test(result)
})

test_that("cXmap4", {
    result <- cXmap4()
    check_ui_test(result)
})

test_that("cXmap5", {
    result <- cXmap5()
    check_ui_test(result)
})
