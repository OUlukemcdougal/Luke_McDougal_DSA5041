# plot function
#' Boxplot
#'
#' @param x object
#' @param ... add from the ggplot function
#'
#' @return a plot of Rttest
#' @export plot.Rttest
#' @importFrom ggplot2 'ggplot'
#' @importFrom ggplot2 'geom_boxplot'
#' @importFrom ggplot2 'aes'
#' @export
#'
plot.Rttest = function(x, ...){
  letter = NULL
  value = NULL
  x_df = data.frame(value = x$df$x, letter = rep(LETTERS[24]))
  y_df = data.frame(value = x$df$y, letter = rep(LETTERS[25]))

  merge_df = merge(x = x_df, y = y_df, all = TRUE)

  ggplot2::ggplot(merge_df, aes(x = letter , y= value , fill=letter)) +
    geom_boxplot()

}
