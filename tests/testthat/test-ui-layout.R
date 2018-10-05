context("canvasXpress Web Charts - Layout")


test_that("cXlayout1", {
    result <- cXlayout1()
    check_ui_test(result)
})

test_that("cXlayout2", {
    result <- cXlayout2()
    check_ui_test(result)
})

test_that("cXlayout3", {
    result <- cXlayout3()
    check_ui_test(result)
})

test_that("cXlayout4", {
    result <- cXlayout4()
    check_ui_test(result)
})


test_that("cXlayout5", {
    result <- cXlayout5()
    check_ui_test(result)
})


test_that("cXlayout6", {
    result <- cXlayout6()
    check_ui_test(result)
})

test_that("cXlayout7", {
    result <- cXlayout7()
    check_ui_test(result)
})


test_that("cXlayout8", {
    result <- cXlayout8()
    check_ui_test(result)
    
    warning("grouping results in different layout order")
})

test_that("cXlayout9", {
    result <- cXlayout9()
    check_ui_test(result)
})

test_that("cXlayout10", {
    result <- cXlayout10()
    check_ui_test(result)
})

test_that("cXlayout11", {
    result <- cXlayout11()
    check_ui_test(result)
    
    message('middle section too small at default height - working as designed')
})
