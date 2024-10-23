# data_analysis.R
# This script loads cleaned data and performs basic analysis and visualization

library(ggplot2)
library(dplyr)

# Load cleaned data
bougouni_data_clean <- readRDS("./data/bougouni_data_clean.rds")
koutiala_data_clean <- readRDS("./data/koutiala_data_clean.rds")
sikasso_data_clean <- readRDS("./data/sikasso_data_clean.rds")

# Example Analysis - Calculating Mean Values for a Variable (replace 'Variable' with your actual column name)
bougouni_summary <- bougouni_data_clean %>%
  summarise(mean_variable = mean(Variable, na.rm = TRUE))

koutiala_summary <- koutiala_data_clean %>%
  summarise(mean_variable = mean(Variable, na.rm = TRUE))

sikasso_summary <- sikasso_data_clean %>%
  summarise(mean_variable = mean(Variable, na.rm = TRUE))

# Print summaries
print("Bougouni Summary:")
print(bougouni_summary)

print("Koutiala Summary:")
print(koutiala_summary)

print("Sikasso Summary:")
print(sikasso_summary)

# Example Visualization - Boxplot of Variable across the 3 sectors
combined_data <- bind_rows(
  mutate(bougouni_data_clean, Sector = "Bougouni"),
  mutate(koutiala_data_clean, Sector = "Koutiala"),
  mutate(sikasso_data_clean, Sector = "Sikasso")
)

ggplot(combined_data, aes(x = Sector, y = Variable)) +
  geom_boxplot() +
  labs(title = "Comparison of Variable across Sectors", x = "Sector", y = "Variable") +
  theme_minimal()

# Save the plot
ggsave("./output/sector_comparison_boxplot.png")
cat("Analysis and visualization completed. Plot saved in './output/'.\n")
