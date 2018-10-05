context("canvasXpress Web Charts - ScatterBubble2D")
load_ui_functions()


test_that("cXscatterbubble2d1", {
    result <- cXscatterbubble2d1()
    check_ui_test(result)
})

test_that("cXscatterbubble2d2", {
    result <- cXscatterbubble2d2()
    check_ui_test(result)
})

test_that("cXscatterbubble2d3", {
    result <- cXscatterbubble2d3()
    check_ui_test(result)
})
