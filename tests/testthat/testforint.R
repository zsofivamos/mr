context("Forint output")

library(mr)

test_that("forint returns HUF symbol appended to the input amount", {
  expect_match(forint(42), "42 HUF")
})
