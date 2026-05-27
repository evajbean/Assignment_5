#' Full Program: Calculating Net Profit in Lobster Fisheries Adjacent to MPAs,
#' depending on MPA Size
#' Initial inputs for full program: MPA Area, N0 (initial population)
#' 
#' This (simplified) program calculates the net profit incurred by lobster 
#' fisheries due to MPA spillover
#' 
#' 
#' @param max_density maximum number of lobsters that can fit in on square km area
#' @param K carrying capacity (number of lobsters)
#' @param r maximum growth rate 
#' @param m migration rate
#' @param q catch rate
#' @param unit_price price paid on the market for one lobster caught ($/lobster)
#' @param unit_cost cost of establishing an MPA for every unit area ($/km squared)
