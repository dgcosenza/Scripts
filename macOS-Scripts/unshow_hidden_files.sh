#!/bin/bash

# --------------------------------------------------------------------------
# This script disables the display of hidden files in Finder on macOS and restarts Finder to apply the changes.
# --------------------------------------------------------------------------

# Disable showing all files, including hidden ones, in Finder
defaults write com.apple.finder AppleShowAllFiles FALSE

# Restart Finder to apply the changes
killall Finder
