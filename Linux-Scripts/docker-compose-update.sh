#!/bin/bash
RED='\033[0;31m'
YELLOW='\033[0;33m'
NOCOLOR='\033[0m'

cd /home/fnxusa/docker/

# Update Containers

echo ""
echo "${YELLOW}Updating Authentik Settings${NOCOLOR}"
echo ""

cd authentik/
sudo docker-compose stop && sudo docker rm authentik_postgresql && sudo docker rm authentik_redis && sudo docker rm authentik_server && sudo docker rm authentik_worker && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Chromium Settings${NOCOLOR}"
echo ""

cd ../chromium
sudo docker-compose stop && sudo docker rm chromium && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Cloudflared Settings${NOCOLOR}"
echo ""

cd ../cloudflared
sudo docker-compose stop && sudo docker rm cloudflared && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Duplicati Settings${NOCOLOR}"
echo ""

cd ../duplicati
sudo docker-compose stop && sudo docker rm duplicati && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Firefox Settings${NOCOLOR}"
echo ""

cd ../firefox
sudo docker-compose stop && sudo docker rm firefox && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Flame Settings${NOCOLOR}"
echo ""

cd ../flame
sudo docker-compose stop && sudo docker rm flame && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Glances Settings${NOCOLOR}"
echo ""

cd ../glances
sudo docker-compose stop && sudo docker rm glances && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Guacamole Settings${NOCOLOR}"
echo ""

cd ../guacamole
sudo docker-compose stop && sudo docker rm guacamole && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating HoloPlay Settings${NOCOLOR}"
echo ""

cd ../holoplay
sudo docker-compose stop && sudo docker rm holoplay && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Jackett Settings${NOCOLOR}"
echo ""

cd ../jackett
sudo docker-compose stop && sudo docker rm jackett && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Minecraft Server Settings${NOCOLOR}"
echo ""

cd ../minecraft-server
sudo docker-compose stop && sudo docker rm minecraft-server && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Microsoft SQL Server Management Studio 2019 with FTS Settings${NOCOLOR}"
echo ""

cd ../mssql-fts
sudo docker-compose stop && sudo docker rm mssql-fts && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Nextcloud & MariaDB Settings${NOCOLOR}"
echo ""

cd ../nextcloud
sudo docker-compose stop && sudo docker rm nextcloud && sudo docker rm mariadb && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating NGiNX Settings${NOCOLOR}"
echo ""

cd ../nginx
sudo docker-compose stop && sudo docker rm nginx && sudo docker rm mariadb3 && sudo docker rm mariadb4 && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating OpenSpeedTest Settings${NOCOLOR}"
echo ""

cd ../openspeedtest
sudo docker-compose stop && sudo docker rm openspeedtest && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Opera Settings${NOCOLOR}"
echo ""

cd ../opera
sudo docker-compose stop && sudo docker rm opera && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating phpMyAdmin Settings${NOCOLOR}"
echo ""

cd ../phpmyadmin
sudo docker-compose stop && sudo docker rm phpmyadmin && sudo docker rm mariadb2 && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Plex Media Server Settings${NOCOLOR}"
echo ""

cd ../plex-media-server
sudo docker-compose stop && sudo docker rm plex && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Portainer CE Settings${NOCOLOR}"
echo ""

cd ../portainer
sudo docker-compose stop && sudo docker rm portainer && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating pyLoad Settings${NOCOLOR}"
echo ""

cd ../pyload
sudo docker-compose stop && sudo docker rm pyload && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating qBittorrent Settings${NOCOLOR}"
echo ""

cd ../qbittorrent
sudo docker-compose stop && sudo docker rm qbittorrent && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating RetroArch Web Nightly Settings${NOCOLOR}"
echo ""

cd ../retroarch
sudo docker-compose stop && sudo docker rm retroarch && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating SFTP Settings${NOCOLOR}"
echo ""

cd ../sftp
sudo docker-compose stop && sudo docker rm sftp && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating SmokePing Settings${NOCOLOR}"
echo ""

cd ../smokeping
sudo docker-compose stop && sudo docker rm smokeping && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Snapdrop Settings${NOCOLOR}"
echo ""

cd ../snapdrop
sudo docker-compose stop && sudo docker rm snapdrop && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Sonarr Settings${NOCOLOR}"
echo ""

cd ../sonarr
sudo docker-compose stop && sudo docker rm sonarr && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Stirling PDF Settings${NOCOLOR}"
echo ""

cd ../stirling-pdf
sudo docker-compose stop && sudo docker rm stirling-pdf && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Syncthing Settings${NOCOLOR}"
echo ""

cd ../syncthing
sudo docker-compose stop && sudo docker rm syncthing && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Tautulli Settings${NOCOLOR}"
echo ""

cd ../tautulli
sudo docker-compose stop && sudo docker rm tautulli && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating The Lounge Settings${NOCOLOR}"
echo ""

cd ../the-lounge
sudo docker-compose stop && sudo docker rm thelounge && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Transmission Settings${NOCOLOR}"
echo ""

cd ../transmission
sudo docker-compose stop && sudo docker rm transmission && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Uptime Kuma Settings${NOCOLOR}"
echo ""

cd ../uptime-kuma
sudo docker-compose stop && sudo docker rm uptime-kuma && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating VSCodium Settings${NOCOLOR}"
echo ""

cd ../vscodium
sudo docker-compose stop && sudo docker rm vscodium && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating Windows 11 Settings${NOCOLOR}"
echo ""

cd ../windows
sudo docker-compose stop && sudo docker rm windows && sudo docker-compose up -d --remove-orphans

echo ""
echo "${YELLOW}Updating WordPress Settings${NOCOLOR}"
echo ""

cd ../wordpress_megaron
sudo docker-compose stop && sudo docker rm wordpress_megaron && sudo docker rm mariadb5 && sudo docker-compose up ->

cd /home/fnxusa/
