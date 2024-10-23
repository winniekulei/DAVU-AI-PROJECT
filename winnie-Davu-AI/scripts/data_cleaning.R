# data_cleaning.R
# This script loads and performs basic data cleaning on the .xlsx files

library(readxl)
library(dplyr)

# Load Bougouni Data
bougouni_data <- read_excel("./data/BougouniSector_Average_JJA.xlsx")
bougouni_data_clean <- bougouni_data %>%
  # Example Cleaning Steps
  na.omit() %>%  # Remove rows with NA values
  rename_with(~ gsub("\\s", "_", .), everything())  # Replace spaces in column names with underscores

# Load Koutiala Data
koutiala_data <- read_excel("./data/KoutialaSector_Average_JJA.xlsx")
koutiala_data_clean <- koutiala_data %>%
  na.omit() %>%
  rename_with(~ gsub("\\s", "_", .), everything())

# Load Sikasso Data
sikasso_data <- read_excel("./data/SikassoSector_Average_JJA.xlsx")
sikasso_data_clean <- sikasso_data %>%
  na.omit() %>%
  rename_with(~ gsub("\\s", "_", .), everything())

# Save cleaned datasets for further analysis
saveRDS(bougouni_data_clean, "./data/bougouni_data_clean.rds")
saveRDS(koutiala_data_clean, "./data/koutiala_data_clean.rds")
saveRDS(sikasso_data_clean, "./data/sikasso_data_clean.rds")

cat("Data cleaning completed. Cleaned files saved in './data/'.\n")
