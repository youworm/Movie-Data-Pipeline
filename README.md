# Movie Box Office Data Pipeline

End-to-end R data pipeline that ingests raw movie box office data, removes duplicates, creates analytical features, runs Monte Carlo simulations, and exports processed data for statistical inference.

## Tech Stack
R, tidyverse, R Markdown, Git/GitHub

## Pipeline
Raw CSV → Clean Data → Sample Data → Feature Engineering → Simulation → Processed Outputs

## Project Structure
- data/raw: original dataset
- data/processed: pipeline outputs
- notebooks: statistical analysis
- src: reusable pipeline functions
- run_pipeline.R: main execution script

## Key Features
- Data cleaning and deduplication
- Feature engineering (profitability, seasonality)
- Monte Carlo simulation (1,000+ iterations)
- Reproducible workflow

## How to Run
```r
source("run_pipeline.R")
