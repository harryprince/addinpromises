#' Insert \%...>\%.
#'
#' Call this function as an addin to insert \code{ \%...>\% } at the cursor position.
#'
#' @export
insertInAddin <- function() {
    rstudioapi::insertText(" %...>% ")
}
