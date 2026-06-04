#' Test for calc_pop_change

library(testthat)
library(tidyverse)
library(here)
library(janitor)

# source function
source(here("R/calc_pop_change.R"))

test.data <- c(0,10,NA)

test_that("population change equation works", {
  
  expect_equal(calc_pop_change(k=test.data[1]), 0)
  large <- calc_pop_change(k=test.data[2])
  small <- calc_pop_change(k=test.data[1])
  expect_true(large>small)
})

test_that("k must have a value", {
  expect_error(calc_pop_change(k=test.data[3]), "k must have a value")
})




