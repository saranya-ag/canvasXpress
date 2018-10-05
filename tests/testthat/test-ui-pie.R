context("canvasXpress Web Charts - Pie")


test_that("cXpie1", {
    result <- cXpie1()
    check_ui_test(result)
    
    warning('pie changes color on mouseover (if plot is not resized)')
})

test_that("cXpie2", {
    result <- cXpie2()
    check_ui_test(result)
    
    warning('pie changes color on mouseover (if plot is not resized)')
})

