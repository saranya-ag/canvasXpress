context("canvasXpress Web Charts - Bubble")
load_ui_functions()


test_that("cXbubble1", {
    result <- cXbubble1()
    check_ui_test(result)
})

test_that("cXbubble2", {
    result <- cXbubble2()
    check_ui_test(result)
})

test_that("cXbubble3", {
    result <- cXbubble3()
    check_ui_test(result)
})
