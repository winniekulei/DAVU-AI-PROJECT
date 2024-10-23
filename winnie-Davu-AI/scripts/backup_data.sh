#!/bin/bash
# Script to back up data files

# Define source and destination directories
SOURCE_DIR="./data"
BACKUP_DIR="./backup"

# Create backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir "$BACKUP_DIR"
fi

# Copy files from source to backup
cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"/

echo "Data backup completed!"
