#' Test for calc_net_profit
library(testthat)
library(tidyverse)
library(here)
library(janitor)
# source function
source(here("R/calc_net_profit.R"))
test.data <- c(0, 100, 1000)
test_that("net profit equation works", {
  
  expect_equal(calc_net_profit(catch = test.data[1], cost = test.data[1]), 0)
  low_profit <- calc_net_profit(catch = test.data[2], cost = test.data[2])
  high_profit <- calc_net_profit(catch = test.data[3], cost = test.data[1])
  expect_true(high_profit > low_profit)
  
})
test_that("higher catch increases net profit", {
  
  default_profit <- calc_net_profit(catch = test.data[2], cost = test.data[2])
  increased_profit <- calc_net_profit(catch = test.data[3], cost = test.data[2])
  expect_true(increased_profit > default_profit)
  
})