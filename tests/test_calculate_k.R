#' Test for calculate_k

library(testthat)
library(tidyverse)
library(here)
library(janitor)

# source function
source(here("R/calculate_k.R"))

# mpa_area should be greater than 0
# max density parameter cannot be less than 0

test.data <- data.frame(mpa_area=0, max_density=-999)

test_that("calculate_k_works", {
  expect_equal(calculate_k(mpa_area=0), 0)
  expect_error(calculate_k(test.data), "Error: Cost per area of MPA designation cannot be negative")
})
  
