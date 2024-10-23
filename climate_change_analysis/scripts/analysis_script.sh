#!/bin/bash

# analysis_script.sh
# This script runs the data cleaning and analysis R scripts

echo "Running data cleaning script..."
Rscript ./scripts/data_cleaning.R

echo "Running data analysis script..."
Rscript ./scripts/data_analysis.R

echo "All scripts completed successfully."
