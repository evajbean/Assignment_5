#' Calculate MPA Establishment Cost
#'
#' @param mpa_area area of the MPA in km²
#' @param unit_cost cost per km² to establish the MPA; default = 1000
#' @return cost total cost of MPA establishment in dollars

calc_MPA_cost <- function(mpa_area, unit_cost = 1000) {
  cost <- mpa_area * unit_cost
  return(cost)
}