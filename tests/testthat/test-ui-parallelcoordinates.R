context("canvasXpress Web Charts - ParallelCoordinates")
load_ui_functions()


test_that("cXparallelcoordinates1", {
    result <- cXparallelcoordinates1()
    check_ui_test(result)
})

test_that("cXparallelcoordinates2", {
    result <- cXparallelcoordinates2()
    check_ui_test(result)
})

