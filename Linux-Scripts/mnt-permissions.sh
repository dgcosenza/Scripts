#!/bin/bash

# --------------------------------------------------------------------------
# This script sets ownership and permissions for directories and files within the "/mnt/storage/storage" directory.
# It ensures that the user "fnxusa" and group "fnxusa" have ownership of all files and directories recursively.
# It also sets appropriate permissions for directories and files.
# Additionally, it removes any files starting with '._' and .DS_Store files within the "/mnt/storage/storage" directory.
# --------------------------------------------------------------------------

# Set ownership to user "fnxusa" and group "fnxusa" recursively for the directory "/mnt/storage/storage"
sudo chown fnxusa:fnxusa -R /mnt/storage/storage

# Set permissions for directories under "/mnt/storage/storage"
sudo find /mnt/storage/storage -type d -exec chmod 755 {} +

# Set permissions for files under "/mnt/storage/storage"
sudo find /mnt/storage/storage -type f -exec chmod 644 {} +

# Remove all files starting with '._' under "/mnt/storage/storage"
sudo find /mnt/storage/storage -type f -name '._*' -exec rm {} \;

# Remove all .DS_Store files under "/mnt/storage/storage"
sudo find /mnt/storage/storage -type f -name '.DS_Store' -exec rm {} \;
