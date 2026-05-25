# Tidy Tuesday 2026

Weekly data analysis and visualization submissions for the [#TidyTuesday](https://github.com/rfordatascience/tidytuesday) social data project, hosted by the R4DS Community.

Each week a new dataset is released. This repo contains my analyses, explorations, and visualizations for 2026. View the live site at [Quarto Pub](https://quartopub.com).

---

## Tech Stack

- **Language**: R
- **Visualization**: ggplot2
- **Data Wrangling**: dplyr, tidyr
- **Reporting**: Quarto (website + frozen per-week outputs)
- **Reproducibility**: per-week `renv` lockfiles
- **Data Loading**: tidytuesdayR

---

## Submissions

| Week | Date | Topic | Folder |
|------|------|-------|--------|
| W21 | 2026-05-19 | Energy Consumption | [W21/](W21/) |

*Table updated each week after submission.*

---

## Workflow: Render → Freeze → Publish

This site uses [Quarto's freeze feature](https://quarto.org/docs/projects/code-execution.html#freeze) to combine per-week `renv` isolation with a unified website:

1. **Write locally**: Open `WXX/` in RStudio/Positron. `renv` auto-activates via `.Rprofile`.
2. **Restore & render**: 
   ```r
   renv::restore()     # Install locked packages for this week
   quarto::quarto_render("analysis.qmd")
   ```
3. **Freeze**: Quarto stores executed outputs in `WXX/_freeze/` (committed to repo).
4. **Publish**: Run `quarto publish quarto-pub` from the project root. Site builds from frozen outputs—no re-execution needed.

Each week's code runs **once, locally, in its own environment**. The frozen snapshot ensures reproducibility and keeps the site build lightweight.

---

## Repository Structure

```
tidytuesday-2026/
├── _quarto.yml          # Site config (navbar, theme, freeze settings)
├── index.qmd            # Landing page with auto-generated listing
├── about.qmd            # About page
├── utils/               # Shared ggplot2 theme, palettes, helpers (sourced, not installed)
├── W21/                 # Week 21 submission
│   ├── renv.lock        # Locked package versions for this week
│   ├── analysis.qmd     # Analysis (rendered locally, frozen outputs committed)
│   └── _freeze/         # Frozen execution outputs (committed to repo)
└── WXX/                 # Future weeks follow same structure
```

---

## Preview & Publish

**Preview locally:**
```bash
quarto preview
```

**Publish to Quarto Pub:**
```bash
quarto publish quarto-pub
```

---

## Reproduce a Single Week

To re-render and verify a week's analysis with its locked environment:

```r
# From the project root
setwd("W21")
renv::restore()
quarto::quarto_render("analysis.qmd")
```

---

## Yearly Repo

This repo covers **2026 only**. A fresh repo (`tidytuesday-2027`) will be created in January 2027 using the same structure, keeping repository sizes lean and git history manageable.

---

## License

Code: [MIT](https://github.com/thedbcooper/tidytuesday-2026/blob/main/LICENSE-MIT)

Visualizations & Written Content: [CC-BY-4.0](https://github.com/thedbcooper/tidytuesday-2026/blob/main/LICENSE-CC-BY-4.0)
