#!/bin/bash

# --------------------------------------------------------------------------
# This script sets ownership and permissions for directories and files within the "~/docker/nginx/config/www" directory.
# It ensures that the user "fnxusa" and group "fnxusa" have ownership of all files and directories recursively,
# and it sets appropriate permissions for directories and files within the "courses" directory.
# Additionally, it removes any files starting with '._' and .DS_Store files within the "~/docker/nginx/config/www" directory.
# --------------------------------------------------------------------------

# Set ownership to user "fnxusa" and group "fnxusa" recursively for the directory "~/docker/nginx/config/www"
sudo chown fnxusa:fnxusa -R ~/docker/nginx/config/www

# Set permissions for directories under "~/docker/nginx/config/www/courses"
sudo find ~/docker/nginx/config/www/courses -type d -exec chmod 755 {} +

# Set permissions for files under "~/docker/nginx/config/www/courses"
sudo find ~/docker/nginx/config/www/courses -type f -exec chmod 644 {} +

# Remove all files starting with '._' under "~/docker/nginx/config/www"
sudo find ~/docker/nginx/config/www -type f -name '._*' -exec rm {} \;

# Remove all .DS_Store files under "~/docker/nginx/config/www"
sudo find ~/docker/nginx/config/www -type f -name '.DS_Store' -exec rm {} \;
