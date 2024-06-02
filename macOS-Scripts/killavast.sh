#!/bin/bash

# --------------------------------------------------------------------------
# Script to disable Avast antivirus components, including Avast DNS, to enable custom DNS settings for browsing.
# This script disables certain components of Avast antivirus on macOS to allow users to navigate with their preferred DNS settings.
# --------------------------------------------------------------------------

# Disable Avast Mail Shield component
sudo /Applications/Avast.app/Contents/Backend/utils/com.avast.cfgctl -f com.avast.proxy.conf -t mailshield -v enabled -b false

# Disable Avast Web Shield component
sudo /Applications/Avast.app/Contents/Backend/utils/com.avast.cfgctl -f com.avast.proxy.conf -t webshield -v enabled -b false

# Disable Avast Secure DNS feature
sudo /Applications/Avast.app/Contents/Backend/utils/com.avast.cfgctl -f com.avast.securedns.conf -t securedns -v enabled -b false

# Restart Avast Proxy processes to apply changes
sudo killall -hup com.avast.proxy

# Restart Avast Secure DNS processes to apply changes
sudo killall -hup com.avast.securedns
