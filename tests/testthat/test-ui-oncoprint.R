context("canvasXpress Web Charts - Oncoprint")
load_ui_functions()


test_that("cXoncoprint1", {
    result <- cXoncoprint1()
    check_ui_test(result)
})

test_that("cXoncoprint2", {
    result <- cXoncoprint2()
    check_ui_test(result)
})

test_that("cXoncoprint3", {
    result <- cXoncoprint3()
    check_ui_test(result)
})
