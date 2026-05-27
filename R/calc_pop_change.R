#' Calculate Change in Population Inside MPA
#' 
#' This function uses the carrying capacity calculated in calculate_k.R to
#' calculate the change in population over a given time period. This uses the 
#' discrete logistic growth equation
#' 
#' @param n_0 initial population of lobsters inside the MPA; default = 30
#' @param k carrying capacity calculated in calculate_k.R module
#' @param r growth rate; default = 0.3
#' @param t time
#' output: n_t_in (the number of lobsters inside the MPA, given k, 
#' after maximum time)

calc_pop_change <- function(n_o=30, k, r=0.3, t){
  
  n_t_in = n_0*k*exp(r*t)/((k-n_0)+n_0*exp(r*t))
  
  return(n_t_in)
}

