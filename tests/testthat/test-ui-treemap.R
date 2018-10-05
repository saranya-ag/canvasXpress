context("canvasXpress Web Charts - Treemap")
load_ui_functions()


test_that("cXtreemap1", {
    result <- cXtreemap1()
    check_ui_test(result)
})

test_that("cXtreemap2", {
    result <- cXtreemap2()
    check_ui_test(result)
})

test_that("cXtreemap3", {
    result <- cXtreemap3()
    check_ui_test(result)
})
