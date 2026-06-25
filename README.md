# R Training: Data Manipulation, Visualization & Modeling

Materials for the R training sessions I run — slides, sample scripts, and the datasets
we work through together. Everything here is meant to be opened, edited, and broken on
purpose. That's how you learn R.

Facilitated by **Lackson David** — Software Developer & Data Scientist
[lacksinho@gmail.com](mailto:lacksinho@gmail.com) · [ladam.dev](https://ladam.dev)

## What's covered

We move from "what is a data frame" to fitting a regression in roughly this order:

- Getting comfortable in R and RStudio
- Wrangling data with the Tidyverse (`dplyr`, `tidyr`)
- Importing, cleaning, and summarizing messy real-world data
- Plotting — both base R (`hist`, `boxplot`, `barplot`) and `ggplot2`
- Linear regression and interpreting the output

## Slides

| File | What's in it |
|------|--------------|
| `R_Training_Module_1_2.pptx` | R basics, data types, and the Tidyverse, with hands-on exercises |
| `Introduction-to-ggplot2.pptx` | Building plots layer by layer with `ggplot2` |
| `Visualization_Techniques_with_R.pptx` | Base R plotting and where each chart type fits |
| `Statistical-Modeling-and-Regression.pptx` | Linear regression — fitting, reading, and trusting (or not) a model |
| `R_Resources.docx` | Links and references for going deeper after the sessions |

## Scripts

These are the live-coding files from the sessions. Expect rough edges — they're written
the way you'd actually write them in class, not polished into a package.

| File | Focus |
|------|-------|
| `Day_01.R` | First contact: loading data, handling NAs, summary stats |
| `Hands_on_12.R` | The big one — cleaning, `dplyr` verbs, base + `ggplot2` plots, a regression |
| `Playing_script.R` | Scratchpad for plotting and multi-variable models |
| `student_ds_reader.R` | Minimal loader for reading a dataset and peeking at it |

The `Datasets/` folder holds the CSVs these scripts read — student records (clean and
deliberately messy versions) plus a couple of health datasets for extra practice.

## Getting set up

You'll need:

- R 4.0 or newer
- RStudio (optional, but it makes life easier)
- An internet connection the first time, to pull down packages

Then install the Tidyverse — it covers almost everything we use:

```r
install.packages("tidyverse")
install.packages("readxl")  # only if you're reading .xlsx files
```

Open `Muhas_RTraining.Rproj` in RStudio so the working directory and the relative paths
in the scripts line up, then run the scripts from there.
