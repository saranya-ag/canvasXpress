context("canvasXpress Web Charts - Donnut")
load_ui_functions()


test_that("cXdonut1", {
    result <- cXdonnut1()
    check_ui_test(result)
})

test_that("cXdonut2", {
    result <- cXdonnut2()
    check_ui_test(result)
})
