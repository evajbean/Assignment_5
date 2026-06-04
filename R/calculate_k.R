#' Calculating Carrying Capacity (K)
#' 
#' This function calculates the carrying capacity based on inputs of MPA area
#' and parameter of maximum density per km2
#' 
#' inputs: mpa_area (km2)
#' @param max_density maximum number of lobsters that can be in a given km2 area;
#' default = 10
#' @returns carrying capacity of lobsters in an MPA depending on it's area

calculate_k <- function(mpa_area, max_density=10){
  if (mpa_area < 0) stop("MPA area cannot be negative")
  k = mpa_area*max_density
  
  return(k)
}