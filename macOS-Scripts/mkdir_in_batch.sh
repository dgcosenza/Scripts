#!/bin/bash

# --------------------------------------------------------------------------
# Script to create directories listed in the provided data on macOS.
# --------------------------------------------------------------------------

# Define the list of directories to create
directories=(
    "authentik"
    "chromium"
    "cloudflared"
    "duplicati"
    "firefox"
    "flame"
    "flexget"
    "glances"
    "guacamole"
    "holoplay"
    "jackett"
    "memos"
    "minecraft-server"
    "mssql-fts"
    "nextcloud"
    "nginx"
    "openspeedtest"
    "opera"
    "phpmyadmin"
    "plex-media-server"
    "portainer"
    "pyload"
    "qbittorrent"
    "retroarch"
    "sftp"
    "smokeping"
    "snapdrop"
    "sonarr"
    "stirling-pdf"
    "syncthing"
    "tautulli"
    "the-lounge"
    "transmission"
    "uptime-kuma"
    "vscodium"
    "windows"
    "wordpress_megaron"
)

# Loop through the list and create directories
for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

echo "Directories created successfully."
