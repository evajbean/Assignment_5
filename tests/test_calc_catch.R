#' Test for cal_catch

library(testthat)
library(tidyverse)
library(here)
library(janitor)

# source function
source(here("R/calc_catch.R"))

test.data <- c(0, 10, 100)

test_that("catch equation works", {
  
  expect_equal(calc_catch(n_t_out = test.data[1]), 0)
  low_catch <- calc_catch(n_t_out = test.data[2])
  high_catch <- calc_catch(n_t_out = test.data[3])
  expect_true(high_catch > low_catch)
  
})

test_that("higher catch rate increase catch", {
  
  default_catch <- calc_catch(n_t_out = test.data[2])
  increased_catch <- calc_catch(n_t_out = test.data[2], q = 0.8)
  expect_true(increased_catch > default_catch)
  
})

