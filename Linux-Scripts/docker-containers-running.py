#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

def clean_screen():
    # Clean screen on Windows
    if os.name == "nt":
        os.system("cls")

    # Clean screen on macOS and Linux
    else:
        os.system("clear")

clean_screen()

print("")

print("Containers running: " + str(int(os.popen("docker ps -a | grep 'Up' | wc -l").read())))
