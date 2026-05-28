#' Calculate Catch Rate
#'
#' This function uses the migration rate that was calculated in the 
#' cal_migration.R to calculate the lobster catch rate outside of the MPA.
#'
#' @param n_t_out number of lobsters outside the MPA at time t
#' @param q catch rate; default = 0.5
#' 
#' output: catch (number of lobsters caught outside the MPA)

calc_catch <- function(n_t_out, q = 0.5){
  
  catch <- n_t_out*q
  
  return(catch)
}
  

