context("Utils for selecting SR models")

data(res_vpa)

test_that("get.SRdata returns data frame", {
  expect_equal(class(get.SRdata(res_vpa, return.df = TRUE)),
               "data.frame")
  expect_equal(dim(get.SRdata(res_vpa, return.df = TRUE)),
               c(30, 3))
})

test_that("get.SRdata returns list", {
  expect_false(class(get.SRdata(res_vpa)) == "data.frame")
  expect_equal(length(get.SRdata(res_vpa)), 3)
  expect_null(dim(get.SRdata(res_vpa)))
})