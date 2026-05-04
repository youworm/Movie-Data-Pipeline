library(tidyverse)

load_data <- function(path) {
  read.csv(path, stringsAsFactors = FALSE)
}

clean_data <- function(df) {
  df %>%
    distinct()
}

create_sample <- function(df, n = 200, seed = 67) {
  set.seed(seed)
  df %>%
    sample_n(size = n)
}

add_features <- function(df) {
  df %>%
    mutate(
      profitable = Worldwide_Gross > Budget,
      season = ifelse(Month %in% c("Jun", "Jul", "Aug"), "summer", "rest"),
      release_period = case_when(
        Year >= 1980 & Year <= 1999 ~ "1980-1999",
        Year >= 2000 & Year <= 2018 ~ "2000-2018",
        TRUE ~ "Other"
      )
    )
}

export_data <- function(df, path) {
  write.csv(df, path, row.names = FALSE)
}