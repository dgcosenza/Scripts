#!/bin/bash

# --------------------------------------------------------------------------
# This script authorizes an unknown file on macOS Sonoma without needing to go through System Preferences.
# It clears the quarantine attribute from the specified file using the 'xattr' command and then executes the file.
# --------------------------------------------------------------------------

# Function to authorize and execute a file
authorize_and_execute_file() {
    # Clear the terminal screen for better readability
    clear
    
    # Remove the quarantine attribute from the specified file
    sudo xattr -r -d com.apple.quarantine "$1"
    
    # Inform the user that the file has been authorized
    echo "The file '$1' has been authorized and is ready to be opened."
    
    # Execute the file
    open "$1"
    
    # Inform the user that the file is being opened
    echo "Opening the file '$1'..."
}

# Check if the file path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

# Call the function to authorize and execute the file with the provided file path
authorize_and_execute_file "$1"
