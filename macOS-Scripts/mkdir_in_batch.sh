#!/bin/bash

# --------------------------------------------------------------------------
# Script to create directories listed in the provided data on macOS.
# --------------------------------------------------------------------------

# Define the list of directories to create
directories=(
    "directory_1"
    "directory_2"
    "directory_3"
    "directory_4"
    "directory_5"
    "directory_6"
    "directory_7"
)

# Loop through the list and create directories
for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

echo "Directories created successfully."
