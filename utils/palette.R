# Named color palette for TidyTuesday submissions.
# Drawn from a colorblind-accessible palette (Okabe-Ito inspired).

tt_colors <- c(
  blue       = "#0072B2",
  orange     = "#E69F00",
  green      = "#009E73",
  yellow     = "#F0E442",
  sky_blue   = "#56B4E9",
  vermillion = "#D55E00",
  pink       = "#CC79A7",
  black      = "#000000",
  grey       = "#999999"
)

#' Access one or more colors by name from the TidyTuesday palette.
#'
#' @param ... Character names of colors (e.g., "blue", "orange")
#'   If omitted, returns the full named vector.
#'
#' @examples
#' tt_pal()              # full palette
#' tt_pal("blue")        # single color
#' tt_pal("blue", "orange")  # two colors
#' @export
tt_pal <- function(...) {
  keys <- c(...)
  if (length(keys) == 0) return(tt_colors)
  tt_colors[keys]
}
