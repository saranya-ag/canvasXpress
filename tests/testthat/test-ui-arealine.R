context("canvasXpress Web Charts - AreaLine")


test_that("cXarealine1", {
    result <- cXarealine1()
    check_ui_test(result)
})

test_that("cXarealine2", {
    result <- cXarealine2()
    check_ui_test(result)
})

test_that("cXarealine3", {
    result <- cXarealine3()
    check_ui_test(result)
})
