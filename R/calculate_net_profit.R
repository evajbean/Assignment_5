#' Calculate Net Profit
#'
#' @param profit gross profit from lobster catch in dollars
#' @param cost cost of MPA establishment in dollars
#' @return net_profit dollars remaining after subtracting MPA cost from profit

net_profit <- function(profit, cost) {
  net_profit <- profit - cost
  return(net_profit)
}