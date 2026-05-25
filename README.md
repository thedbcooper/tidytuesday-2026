# Tidy Tuesday 2026

Weekly data analysis and visualization submissions for the [#TidyTuesday](https://github.com/rfordatascience/tidytuesday) social data project, hosted by the R4DS Community.

Each week a new dataset is released. This repo contains my analyses, explorations, and visualizations for 2026.

---

## Tech Stack

- **Language**: R
- **Visualization**: ggplot2
- **Data Wrangling**: dplyr, tidyr
- **Reporting**: Quarto
- **Reproducibility**: per-week `renv` lockfiles
- **Data Loading**: tidytuesdayR

---

## Submissions

| Week | Date | Topic | Folder |
|------|------|-------|--------|
| W21 | 2026-05-19 | Energy Consumption | [W21/](W21/) |

*Table updated each week after submission.*

---

## How to Run a Submission

Each week folder contains its own `renv.lock` — you can restore the exact package environment used:

```r
# From inside a week folder (e.g., W21/)
setwd("W21")        # set working directory to this week's folder
renv::restore()     # restore locked package environment
quarto::quarto_render("analysis.qmd")
```

Or open the week's directory in RStudio/Positron — `renv` will activate automatically.

---

## Repository Structure

```
tidytuesday-2026/
├── utils/       # Shared ggplot2 theme, palettes, helpers (sourced, not installed)
├── W21/              # Week 21 submission
│   ├── renv.lock     # Locked package versions for this week
│   ├── analysis.qmd  # Main analysis script
│   └── README.md     # Findings & methodology
└── WXX/              # Future weeks follow same structure
```

---

## Yearly Repo

This repo covers **2026 only**. A fresh repo (`tidytuesday-2027`) will be created in January 2027 using the same structure, keeping repository sizes lean and git history manageable.

---

## License

Code: [MIT](LICENSE)  
Visualizations: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
