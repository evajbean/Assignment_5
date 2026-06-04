#' Test for cal_migration

library(testthat)
library(tidyverse)
library(here)
library(janitor)

# source function
source(here("R/calc_migration.R"))

test.data <- c(0,10,100)

test_that("migration equation works", {
  
  expect_equal(calc_migration(n_t_in = test.data[1]), 0)
  low_pop <- calc_migration(n_t_in=test.data[2])
  high_pop <- calc_migration(n_t_in = test.data[3])
  expect_true(high_pop > low_pop)
  
})

test_that("higher migration rate increases mirgration", {
  
  default_migration <- calc_migration(n_t_in = test.data[2])
  increased_migration <- calc_migration(n_t_in = test.data[2], m = 0.5)
  expect_true(increased_migration > default_migration)
  
})


