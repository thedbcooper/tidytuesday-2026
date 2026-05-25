#' Clean, minimal ggplot2 theme for TidyTuesday submissions.
#' Based on theme_minimal with opinionated typography and spacing.
#'
#' @param base_size Base font size (default 13)
#' @param base_family Base font family (default "")
#' @export
theme_tt <- function(base_size = 13, base_family = "") {
  theme_minimal(base_size = base_size, base_family = base_family) +
    theme(
      # Title & caption
      plot.title    = element_text(size = base_size * 1.4, face = "bold",
                                   margin = margin(b = 6)),
      plot.subtitle = element_text(size = base_size * 1.05, color = "grey40",
                                   margin = margin(b = 10)),
      plot.caption  = element_text(size = base_size * 0.75, color = "grey55",
                                   hjust = 0, margin = margin(t = 10)),

      # Axes
      axis.title    = element_text(size = base_size * 0.9, color = "grey30"),
      axis.text     = element_text(size = base_size * 0.85, color = "grey40"),
      axis.ticks    = element_blank(),

      # Grid — keep horizontal only by default
      panel.grid.major.x = element_blank(),
      panel.grid.minor   = element_blank(),
      panel.grid.major.y = element_line(color = "grey90", linewidth = 0.4),

      # Legend
      legend.position    = "top",
      legend.title       = element_text(size = base_size * 0.85, face = "bold"),
      legend.text        = element_text(size = base_size * 0.8),
      legend.key.size    = unit(0.9, "lines"),

      # Margins
      plot.margin = margin(12, 16, 10, 12)
    )
}
