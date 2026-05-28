#' Calculate Catch Profits ($/lobster)
#'
#' This function uses the number of lobsters caught that was calculated in the 
#' calc_catch.R to calculate total catch profits.
#'
#' @param catch number of lobsters caught outside the MPA
#' @param unit_price price paid on the market for one lobster caught ($/lobster)
#' 
#' Put unit_price = 25 as a placeholder
#' 
#' output: profit 

calc_profit <- function(catch, unit_price=25){
  
  profit <- catch*unit_price
  
  return(profit)
}