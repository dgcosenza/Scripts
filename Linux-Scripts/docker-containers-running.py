#!/usr/bin/env python
# -*- coding: utf-8 -*-

# --------------------------------------------------------------------------
# This Python script retrieves the number of containers currently running using Docker.
# It clears the screen before displaying the information.
# --------------------------------------------------------------------------

import os

# Function to clear the screen based on the operating system
def clean_screen():
    # Clear screen on Windows
    if os.name == "nt":
        os.system("cls")

    # Clear screen on macOS and Linux
    else:
        os.system("clear")

# Call the function to clear the screen
clean_screen()

# Print the number of containers currently running
print("Containers running: " + str(int(os.popen("docker ps -a | grep 'Up' | wc -l").read())))

