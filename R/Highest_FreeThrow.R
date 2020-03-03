#' Highest FreeThrow Function
#'
#' This function tells you who had the highest free throw rate in a given year.
#' @param year Takes a 4 digit year between 1950 and 2017
#' @keywords NBA Freethrow Basketball
#' @export
#' @examples
#' Highest_FreeThrow(1967)


Highest_FreeThrow <- function(year){
    values_to_print <- Seasons_Stats_NBA[,c("Year", "Player", "FTr")]
    values_to_print <- dplyr::filter(values_to_print, `Year`==year)
    colnames(values_to_print) <- c("Your Year:", "Player Name:", "Free Throw Rate:")
    values_to_print <- dplyr::arrange(values_to_print, desc(`Free Throw Rate:`))
    print(values_to_print[1,1:3])
}
