#' Correlation Plot Function
#'
#' This function returns a correlation plot for all continuous numeric variables in a given year.
#'
#' @param year Takes a 4 digit year between 1950 and 2017
#' @keywords NBA basketball correlation
#' @export
#' @examples
#' corr_plot(1987)

corr_plot <- function(year){
  corr_data <- dplyr::filter(Seasons_Stats_NBA, `Year`==year)
  corr_data <- purrr::keep(corr_data, is.double)
  corr_data <- cor(corr_data, method = "pearson", use = "complete.obs")
  corrplot::corrplot(corr_data, method="circle", tl.col="black")
}
