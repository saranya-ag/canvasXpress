context("canvasXpress Web Charts - Sunburst")


test_that("cXsunburst1", {
    result <- cXsunburst1()
    check_ui_test(result)
})

test_that("cXsunburst2", {
    result <- cXsunburst2()
    check_ui_test(result)
})

test_that("cXsunburst3", {
    result <- cXsunburst3()
    check_ui_test(result)
})

test_that("cXsunburst4", {
    result <- cXsunburst4()
    check_ui_test(result)
})
