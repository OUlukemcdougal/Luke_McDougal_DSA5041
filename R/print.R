#' Print Rttest function
#Print the data frame using kableExtra::kable()
#'
#' @param x named list
#' @param ... extra
#' @importFrom dplyr '%>%'
#' @importFrom kableExtra 'kable'
#' @importFrom kableExtra 'kable_styling'
#' @return a kable of the columns x and y
#' @export print.Rttest
#' @export
#'
#'
#' @examples
print.Rttest = function(x, ...) {
  kable(x$df, booktabs = TRUE) %>%
    kable_styling(latex_options = "scale_down")
}
