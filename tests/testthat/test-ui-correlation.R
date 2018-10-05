context("canvasXpress Web Charts - Correlation")


test_that("cXcorrelation1", {
    result <- cXcorrelation1()
    check_ui_test(result)
    
    fail('no legend showing')
})

test_that("cXcorrelation2", {
    result <- cXcorrelation2()
    check_ui_test(result)
    
    fail('no legend showing')
})
