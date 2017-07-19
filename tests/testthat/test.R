library(mytestpkg)
context("the basic text")
#http://r-pkgs.had.co.nz/tests.html

testmyf=iseven(4)

test_that("my function works", {
  expect_equal(testmyf, "Indeed it is an even number!")
})


testrn=returnname("Wolfgang")

test_that("my function works", {
  expect_equal(testrn, "gnagfloW")
})
