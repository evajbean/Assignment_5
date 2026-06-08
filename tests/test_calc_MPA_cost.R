#' Test for cal_MPA_cost

library(testthat)
library(tidyverse)
library(here)
library(janitor)

# source function
source(here("R/calc_MPA_cost.R"))

test.data <- c(0, 10, 100)

test_that("MPA cost equation works", {
  
  expect_equal(calc_MPA_cost(mpa_area = test.data[1]), 0)
  small_cost <- calc_MPA_cost(mpa_area = test.data[2])
  large_cost <- calc_MPA_cost(mpa_area = test.data[3])
  expect_true(large_cost > small_cost)
  
})

test_that("higher unit cost increases total cost", {
  
  default_cost <- calc_MPA_cost(mpa_area = test.data[2])
  increased_cost <- calc_MPA_cost(
    mpa_area = test.data[2], 
    unit_cost = 2000)
  
  expect_true(increased_cost > default_cost)
})

