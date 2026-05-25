# _utilities

Shared R helper files sourced into each week's analysis script. These are plain R files — no package installation required, just `source()` them.

---

## Usage

From any week folder (e.g., `W21/analysis.R`):

```r
source("../_utilities/themes.R")
source("../_utilities/palette.R")
source("../_utilities/helpers.R")
```

---

## Contents

| File | What it provides |
|------|-----------------|
| `themes.R` | `theme_tt()` — a clean ggplot2 theme for TidyTuesday plots |
| `palette.R` | `tt_pal` named color vector, `tt_pal()` accessor function |
| `helpers.R` | `load_tt_data(year, week)` — loads data via tidytuesdayR with caching |

---

## Notes

- Update utilities freely across the year. Old weeks still run against their locked renv environments.
- When starting `tidytuesday-2027`, copy this folder as a starting point and adapt as needed.
