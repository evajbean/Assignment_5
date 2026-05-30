#' Calculate Net Profits ($)
#'
#' This function uses the number of lobsters caught that was calculated in the 
#' calc_catch.R to calculate total catch profits.
#'
#' @param catch number of lobsters caught outside the MPA
#' @param unit_price price paid on the market for one lobster caught ($/lobster)
#' @param catch_profit total profit from catch and unit price for lobster overflow ($)
#' @param net_profit net profit from catch profit, accounting for cost of MPA ($)
#' 
#' Put unit_price = 25 as a placeholder
#' 
#' @returns net profit  

calc_net_profit <- function(catch, unit_price=25, cost){
  
  catch_profit <- catch*unit_price
  net_profit <- catch_profit-cost
  
  return(net_profit)
}