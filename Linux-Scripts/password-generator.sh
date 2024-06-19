#!/bin/bash

# --------------------------------------------------------------------------
# This script clears the terminal screen and generates a random password using pwgen.
# The generated password includes special characters, numbers, and both uppercase and lowercase letters.
# The length of the password is 21 characters.
# --------------------------------------------------------------------------

# Clear the terminal screen for better readability
clear

# Display a header for the password generator
echo ""
echo "Password Generator"
echo ""

# Generate a password using pwgen with specified options
pwgen -s -y -B -n -C 21
