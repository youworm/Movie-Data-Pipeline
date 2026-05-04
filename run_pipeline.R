library(tidyverse)

# load data
df <- read.csv("data/raw/movie_boxoffice-1.csv", stringsAsFactors = FALSE)

# clean
df_clean <- distinct(df)

# sample
set.seed(67)
sample_200 <- df_clean %>% sample_n(size = 200)

# feature engineering
sample_200 <- sample_200 %>%
  mutate(
    profitable = Worldwide_Gross > Budget,
    season = ifelse(Month %in% c("Jun","Jul","Aug"), "summer", "rest")
  )

# save output
write.csv(sample_200, "data/processed/sample_200.csv", row.names = FALSE)

print("Pipeline completed successfully")