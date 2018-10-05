context("canvasXpress Web Charts - TagCloud")


test_that("cXtagcloud1", {
    result <- cXtagcloud1()
    check_ui_test(result)
    
    warning('Clicking legend gives countdown spinner, doesn\'t happen on the web')
})

