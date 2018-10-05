context("canvasXpress Web Charts - Scatter3D")


test_that("cXscatter3d1", {
    result <- cXscatter3d1()
    check_ui_test(result)
})

test_that("cXscatter3d2", {
    result <- cXscatter3d2()
    check_ui_test(result)
})

test_that("cXscatter3d3", {
    result <- cXscatter3d3()
    check_ui_test(result)
})

test_that("cXscatter3d4", {
    result <- cXscatter3d4()
    check_ui_test(result)
})

test_that("cXscatter3d5", {
    result <- cXscatter3d5()
    check_ui_test(result)
})

test_that("cXscatter3d6", {
    result <- cXscatter3d6()
    check_ui_test(result)
})

test_that("cXscatter3d7", {
    warning("scatter3d - plot function missing")
})
