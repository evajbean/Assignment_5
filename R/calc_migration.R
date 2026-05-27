#' Calculate Migration Rate
#' 
#' This function uses the new population size (n_t_in) to calculate the migrated
#' population outside the MPA (n_t_out)
#' 
#' @param n_t_in number of lobsters inside the MPA at time t
#' @param m migration rate; default = 0.1
#' output: n_t_out

calc_migration <- function(n_t_in, m=0.1){
  
  n_t_out = n_t_in*m
  
  return(n_t_out)
}
