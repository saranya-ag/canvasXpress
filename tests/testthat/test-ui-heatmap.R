context("canvasXpress Web Charts - Heatmap")


test_that("cXheatmap1", {
    result <- cXheatmap1()
    check_ui_test(result)
})

test_that("cXheatmap2", {
    result <- cXheatmap2()
    check_ui_test(result)
})

test_that("cXheatmap3", {
    result <- cXheatmap3()
    check_ui_test(result)
})

test_that("cXheatmap4", {
    result <- cXheatmap4()
    check_ui_test(result)
})

test_that("cXheatmap5", {
    result <- cXheatmap5()
    check_ui_test(result)
})

test_that("cXheatmap6", {
    result <- cXheatmap6()
    check_ui_test(result)
})

test_that("cXheatmap7", {
    result <- cXheatmap7()
    check_ui_test(result)
})

test_that("cXheatmap8", {
    result <- cXheatmap8()
    check_ui_test(result)
})

test_that("cXheatmap9", {
    result <- cXheatmap9()
    check_ui_test(result)
})

test_that("cXheatmap10", {
    result <- cXheatmap10()
    check_ui_test(result)
})

test_that("cXheatmap11", {
    result <- cXheatmap11()
    check_ui_test(result)
})

test_that("cXheatmap12", {
    result <- cXheatmap12()
    check_ui_test(result)
    
    message('middle section too small at default height - working as designed')
})

