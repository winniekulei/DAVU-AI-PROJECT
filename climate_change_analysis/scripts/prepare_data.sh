#!/bin/bash
# Data preparation script

# Define paths to your data
DATA_DIR="./data"
OUTPUT_DIR="./output"

# Check if directories exist, create them if not
if [ ! -d "$DATA_DIR" ]; then
  mkdir "$DATA_DIR"
fi

if [ ! -d "$OUTPUT_DIR" ]; then
  mkdir "$OUTPUT_DIR"
fi

# Download necessary data files 
curl -o "$DATA_DIR/data_file.csv" 
