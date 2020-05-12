#' Formatter function for Hungarian Forint
#' @param x number
#' @export
#' @importFrom scales dollar
forint <- function(x){
  dollar(x, prefix = "", suffix = " Ft")
}
