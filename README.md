# R Training: Data Manipulation, Visualization & Modeling

Materials for the R training sessions I run. You get the slides, the sample scripts, and
the datasets we work through together. Open them, edit them, break them on purpose. That
is how you learn R.

Facilitated by **Lackson David**, Software Developer & Data Scientist
[lacksinho@gmail.com](mailto:lacksinho@gmail.com) · [ladam.dev](https://ladam.dev)

## What's covered

We start from "what is a data frame" and end at fitting a regression. Roughly this order:

- Getting comfortable in R and RStudio
- Wrangling data with the Tidyverse (`dplyr`, `tidyr`)
- Importing, cleaning, and summarizing messy data
- Plotting with base R (`hist`, `boxplot`, `barplot`) and `ggplot2`
- Linear regression and how to read the output

## Slides

| File | What's in it |
|------|--------------|
| `R_Training_Module_1_2.pptx` | R basics, data types, and the Tidyverse, with hands-on exercises |
| `Introduction-to-ggplot2.pptx` | Building plots layer by layer with `ggplot2` |
| `Visualization_Techniques_with_R.pptx` | Base R plotting and where each chart type fits |
| `Statistical-Modeling-and-Regression.pptx` | Linear regression: fitting a model and reading it |
| `R_Resources.docx` | Links and references for going further after the sessions |

## Scripts

These are the live-coding files from the sessions. They have rough edges on purpose. This
is how you actually write R in class, not how you polish it into a package.

| File | Focus |
|------|-------|
| `Day_01.R` | First steps: loading data, handling NAs, summary stats |
| `Hands_on_12.R` | The big one. Cleaning, `dplyr` verbs, base + `ggplot2` plots, a regression |
| `Playing_script.R` | Scratchpad for plotting and multi-variable models |
| `student_ds_reader.R` | Small loader that reads a dataset and shows it |

The `Datasets/` folder holds the CSVs these scripts read. There are student records, both
clean and deliberately messy, plus a couple of health datasets for extra practice.

## Getting set up

You'll need:

- R 4.0 or newer
- RStudio (optional, but it makes life easier)
- Internet access the first time, to download packages

Then install the Tidyverse. It covers almost everything we use:

```r
install.packages("tidyverse")
install.packages("readxl")  # only if you're reading .xlsx files
```

Open `Muhas_RTraining.Rproj` in RStudio first. That sets the working directory so the
file paths in the scripts work. Then run the scripts from there.
