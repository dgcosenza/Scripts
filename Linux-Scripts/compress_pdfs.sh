#!/bin/bash

# --------------------------------------------------------------------------
# This script optimizes all PDF files in the current directory with maximum compression.
# It creates a folder named "compressed" if it doesn't exist and saves the optimized PDFs there.
# --------------------------------------------------------------------------

# Get the current directory
current_dir="$(pwd)"
dest_dir="$current_dir/compressed"

# Create the "compressed" folder if it doesn't exist
mkdir -p "$dest_dir"

# Iterate over all PDF files in the current directory
for file in "$current_dir"/*.pdf; do
    # Get the filename without the directory
    filename=$(basename "$file")
    
    # Optimize the PDF with maximum compression
    pdfcpu optimize -mode=best "$file" "$dest_dir/$filename"
done

echo "Batch optimization completed."
