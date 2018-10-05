context("canvasXpress Web Charts - Venn")
load_ui_functions()


test_that("cXvenn1", {
    result <- cXvenn1()
    check_ui_test(result)
    
    warning("labels B and D should be switched around")
})

test_that("cXvenn2", {
    result <- cXvenn2()
    check_ui_test(result)
    
    warning("wrong label for second category")
})

test_that("cXvenn3", {
    result <- cXvenn3()
    check_ui_test(result)
    
    warning("wrong label for second category")
})
