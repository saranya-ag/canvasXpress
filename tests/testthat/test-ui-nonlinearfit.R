context("canvasXpress Web Charts - Nonlinearfit")
load_ui_functions()


test_that("cXnonlinearfit1", {
    result <- cXnonlinearfit1()
    check_ui_test(result)
})

test_that("cXnonlinearfit2", {
    result <- cXnonlinearfit2()
    check_ui_test(result)
})
