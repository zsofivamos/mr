#' Formatter function for Hungarian Forint
#' @param x number
#' @return string
#' @export
#' @importFrom scales dollar
forint <- function(x){
  dollar(x, prefix = "", suffix = " HUF")
}
