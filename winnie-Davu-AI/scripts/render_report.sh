#!/bin/bash
# Shell script to render an R Markdown file

# Define the path to your R Markdown file
RMD_FILE="Mali_Data_Analysis.Rmd"

# Define the output format (html_document, pdf_document, word_document, etc.)
OUTPUT_FORMAT="html_document"

# Render the R Markdown file using Rscript
Rscript -e "rmarkdown::render('$RMD_FILE', output_format='$OUTPUT_FORMAT')"
