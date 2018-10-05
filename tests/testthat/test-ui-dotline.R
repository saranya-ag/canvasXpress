context("canvasXpress Web Charts - DotLine")
load_ui_functions()


test_that("cXdotline1", {
    result <- cXdotline1()
    check_ui_test(result)
})

test_that("cXdotline2", {
    result <- cXdotline2()
    check_ui_test(result)
})

test_that("cXdotline3 ", {
    result <- cXdotline3()
    check_ui_test(result)
})
