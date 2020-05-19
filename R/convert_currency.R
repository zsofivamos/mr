#' Function to retrieve historical exchange rates of a base to a symbol currency for the
#' past x amount of days
#'
#' @param from string - base currency
#' @param to string - target currency
#' @param days int - T-number of days we're querying
#' @return data.table
#' @export
#' @importFrom httr GET
#' @importFrom httr content
#' @importFrom data.table data.table


convert_currency <- function(from, to, days) {

  exchange_rates <- content(GET(
    'https://api.exchangeratesapi.io/history',
    query = list(
      start_at = Sys.Date() - days,
      end_at   = Sys.Date(),
      base     = from,
      symbols  = to
    )))$rates

  result <- data.table(
    date = as.Date(names(exchange_rates)),
    rate = as.numeric(unlist(exchange_rates)))

  print(result)
}

