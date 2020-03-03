#' Oldest Player Function
#'
#' This function tells you who had was the oldest player in a given year. If there were two or more
#' players of the same age, the function returns the first player, alphabetically.
#'
#' @param year Takes a 4 digit year between 1950 and 2017
#' @keywords NBA age oldest basketball
#' @export
#' @examples
#' oldest_player(2015)

oldest_player <- function(year){
       values_to_print <- Seasons_Stats_NBA[,c("Year", "Player", "Age")]
       values_to_print <- dplyr::filter(values_to_print, `Year`==year)
       colnames(values_to_print) <- c("Your Year:", "Player Name:", "Player Age:")
       values_to_print <- dplyr::arrange(values_to_print, dplyr::desc(`Player Age:`))
       if (values_to_print[1, 3] > values_to_print[2, 3]) {print(values_to_print[1,1:3])}
       else {values_to_print <- dplyr::arrange(values_to_print, dplyr::desc(`Player Age:`), `Player Name:`)
            print(values_to_print[1,1:3])
            print("More than one player of same age. First player listed alphabetically is shown.")}
   }
