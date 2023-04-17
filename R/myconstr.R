
#'Constructor Function
# My constructor function that takes in 2 vectors (x,y) and alpha
#'
#' @param x named list
#' @param y named list
#' @param alpha confidence inveral
#' @importFrom stats t.test
#' @return a stats_list of my constructor function
#'
#'
#' @examples
#'
myconstr = function(x, y, alpha) {
  # Calculate t-test
  ttest = t.test(x, y, var.equal = TRUE, conf.level = 1 - alpha)

  # Create a data frame containing x and y
  df = data.frame(x = x, y = y)

  # Create a named list with data frame, alpha, ci, and pvalue
  stats_list = list(df = df, alpha = alpha, ci = ttest$conf.int, pvalue = ttest$p.value)

  class(stats_list) = "Rttest"

  return(stats_list)
}

