#' Load TidyTuesday data for a given year and week.
#'
#' Wraps tidytuesdayR::tt_load() with a message showing which datasets
#' are available. Raw files are downloaded to ../../data/raw/ relative
#' to the calling week's folder.
#'
#' @param year  Four-digit year (e.g., 2026)
#' @param week  Integer week number (e.g., 21)
#'
#' @return A tidytuesdayR object; access datasets with tt$dataset_name
#'
#' @examples
#' tt <- load_tt_data(2026, 21)
#' df <- tt$some_dataset
#' @export
load_tt_data <- function(year, week) {
  tt <- tidytuesdayR::tt_load(year, week = week)
  message("Available datasets: ", paste(names(tt), collapse = ", "))
  tt
}

