context("canvasXpress Web Charts - Tree")
load_ui_functions()


test_that("cXtree1", {
    result <- cXtree1()
    check_ui_test(result)
})

test_that("cXtree2", {
    result <- cXtree2()
    check_ui_test(result)
})

test_that("cXtree3", {
    result <- cXtree3()
    check_ui_test(result)
})

test_that("cXtree4", {
    result <- cXtree4()
    check_ui_test(result)
})

