#' Test for calculate_k

library(testthat)
library(tidyverse)
library(here)
library(janitor)

# source function
source(here("R/calculate_k.R"))

# mpa_area should be greater than 0
# k cannot be less than 0

test_that("calculate_k_works", {

  test.data <- c(0,10,-999)

  expect_that((calculate_k(mpa_area=test.data[1])), equals(0))
  small <- calculate_k(mpa_area=test.data[1])
  big <- calculate_k(mpa_area=test.data[2])
  expect_true(big>small)
})
  
