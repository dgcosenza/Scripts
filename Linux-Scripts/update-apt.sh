# --------------------------------------------------------------------------
# This script performs a series of system package management tasks on a Debian-based system.
# It updates the package lists, upgrades installed packages, removes unnecessary packages,
# cleans package cache, and performs additional system cleanup using aptitude.
# --------------------------------------------------------------------------

clear

# Update package lists and upgrade installed packages using apt-get
sudo apt-get update -y &&
sudo apt-get upgrade -y &&
sudo apt-get autoremove -y &&
sudo apt-get --purge autoremove -y &&
sudo apt-get clean -y &&

# Update package lists, upgrade installed packages, and perform cleanup using aptitude
sudo aptitude update &&
sudo aptitude upgrade &&
sudo aptitude clean &&
sudo aptitude autoclean
