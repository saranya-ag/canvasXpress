context("canvasXpress Web Charts - Chord")
load_ui_functions()


test_that("cXchord1", {
    result <- cXchord1()
    check_ui_test(result)
})

test_that("cXchord2", {
    result <- cXchord2()
    check_ui_test(result)
})

test_that("cXchord3", {
    result <- cXchord3()
    check_ui_test(result)
})
