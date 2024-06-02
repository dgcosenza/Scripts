#!/bin/bash

# --------------------------------------------------------------------------
# This script enables the display of hidden files in Finder on macOS and restarts Finder to apply the changes.
# --------------------------------------------------------------------------

# Enable showing all files, including hidden ones, in Finder
defaults write com.apple.finder AppleShowAllFiles TRUE

# Restart Finder to apply the changes
killall Finder
