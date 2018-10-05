context("canvasXpress Web Charts - Network")
load_ui_functions()


test_that("cXnetwork1", {
    result <- cXnetwork1()
    check_ui_test(result)
    
    warning("legend on the wrong side")
})

test_that("cXnetwork2", {
    result <- cXnetwork2()
    check_ui_test(result)
})


test_that("cXnetwork3", {
    result <- cXnetwork3()
    check_ui_test(result)
})


test_that("cXnetwork4", {
    result <- cXnetwork4()
    check_ui_test(result)
})

test_that("cXnetwork5", {
    result <- cXnetwork5()
    check_ui_test(result)
    
    warning('some lines missing, cross-domain download issue')
})

test_that("cXnetwork6", {
    result <- cXnetwork6()
    check_ui_test(result)
    
    warning('coloring off from web example, cross-domain download issue')
    warning('legend looks different (continuous vs discrete)')
})

test_that("cXnetwork7", {
    result <- cXnetwork7()
    check_ui_test(result)
})

test_that("cXnetwork8", {
    result <- cXnetwork8()
    check_ui_test(result)
})

test_that("cXnetwork9", {
    result <- cXnetwork9()
    check_ui_test(result)
    
    warning("plot starts with a warning popup")
})

test_that("cXnetwork10", {
    result <- cXnetwork10()
    check_ui_test(result)
})
