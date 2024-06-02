RED='\033[0;31m'
YELLOW='\033[0;33m'
NOCOLOR='\033[0m'

clear

# Update repo and system

echo ""
echo "${YELLOW}Updating Operating System with nala${NOCOLOR}"
echo ""

sudo nala update &&
echo ""
sudo nala upgrade -y &&
echo ""
sudo nala autopurge -y &&
echo ""
sudo nala autoremove -y &&
echo ""
sudo nala clean &&

#echo ""
#echo "Updating Operating System with apt"
#echo ""

#sudo apt update -y &&
#sudo apt upgrade -y &&
#sudo apt autoremove -y &&
#sudo apt --purge autoremove -y &&
#sudo apt clean -y &&

# Containers

echo ""
echo "${YELLOW}Updating Docker Containers${NOCOLOR}"
echo ""

echo "${YELLOW}Looking for Authentik Updates${NOCOLOR}"
echo ""
sudo docker pull docker.io/library/postgres:12-alpine &&
sudo docker pull docker.io/library/redis:alpine &&
sudo docker pull ghcr.io/goauthentik/server:2024.2.2 &&
echo ""
echo "${YELLOW}Looking for Chromium Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/chromium:latest &&
echo ""
echo "${YELLOW}Looking for Cloudflared Updates${NOCOLOR}"
echo ""
sudo docker pull cloudflare/cloudflared:latest &&
echo ""
echo "${YELLOW}Looking for Duplicati Updates${NOCOLOR}"
echo ""
sudo docker pull linuxserver/duplicati:latest &&
echo ""
echo "${YELLOW}Looking for Firefox Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/firefox:latest &&
echo ""
echo "${YELLOW}Looking for Flame Updates${NOCOLOR}"
echo ""
sudo docker pull pawelmalak/flame:latest &&
echo ""
echo "${YELLOW}Looking for Glances Updates${NOCOLOR}"
echo ""
sudo docker pull nicolargo/glances:latest &&
echo ""
echo "${YELLOW}Looking for Guacamole Updates${NOCOLOR}"
echo ""
sudo docker pull abesnier/guacamole:latest &&
echo ""
echo "${YELLOW}Looking for HoloPlay Updates${NOCOLOR}"
echo ""
sudo docker pull spout8301/holoplay:1.12.1 &&
echo ""
echo "${YELLOW}Looking for Jackett Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/jackett:latest &&
echo ""
echo "${YELLOW}Looking for Memos Updates${NOCOLOR}"
echo ""
sudo docker pull neosmemo/memos:latest &&
echo ""
echo "${YELLOW}Looking for Minecraft Server Updates${NOCOLOR}"
echo ""
sudo docker pull itzg/minecraft-server:latest &&
echo ""
echo "${YELLOW}Looking for Microsoft SQL Server Management Studio 2019 with FTS Updates${NOCOLOR}"
echo ""
sudo docker pull dgcosenza/mssql-fts:ubuntu &&
echo ""
echo "${YELLOW}Looking for Nextcloud & MariaDB Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/nextcloud:latest &&
sudo docker pull mariadb:latest &&
echo ""
echo "${YELLOW}Looking for NGiNX Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/nginx:latest &&
echo ""
echo "${YELLOW}Looking for OpenSpeedTest Updates${NOCOLOR}"
echo ""
sudo docker pull openspeedtest/latest:latest &&
echo ""
echo "${YELLOW}Looking for Opera Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/opera:latest &&
echo ""
echo "${YELLOW}Looking for phpMyAdmin Updates${NOCOLOR}"
echo ""
sudo docker pull phpmyadmin:latest &&
echo ""
echo "${YELLOW}Looking for Plex Media Server Updates${NOCOLOR}"
echo ""
sudo docker pull plexinc/pms-docker:latest &&
echo ""
echo "${YELLOW}Looking for Portainer CE Updates${NOCOLOR}"
echo ""
sudo docker pull portainer/portainer-ce:latest &&
echo ""
echo "${YELLOW}Looking for pyLoad Updates${NOCOLOR}"
echo ""
sudo docker pull linuxserver/pyload-ng:latest &&
echo ""
echo "${YELLOW}Looking for qBittorrent Updates${NOCOLOR}"
echo ""
sudo docker pull linuxserver/qbittorrent:latest &&
echo ""
echo "${YELLOW}Looking for RetroArch Web Nightly Updates${NOCOLOR}"
echo ""
sudo docker pull inglebard/retroarch-web-nightly:latest &&
echo ""
echo "${YELLOW}Looking for SFTP Updates${NOCOLOR}"
echo ""
sudo docker pull atmoz/sftp:latest &&
echo ""
echo "${YELLOW}Looking for SmokePing Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/smokeping:latest &&
echo ""
echo "${YELLOW}Looking for Snapdrop Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/snapdrop:latest &&
echo ""
echo "${YELLOW}Looking for Sonarr Updates${NOCOLOR}"
echo ""
sudo docker pull linuxserver/sonarr:latest &&
echo ""
echo "${YELLOW}Looking for Stirling PDF Updates${NOCOLOR}"
echo ""
sudo docker pull frooodle/s-pdf:latest &&
echo ""
echo "${YELLOW}Looking for Syncthing Updates${NOCOLOR}"
echo ""
sudo docker pull linuxserver/syncthing:latest &&
echo ""
echo "${YELLOW}Looking for Tautulli Updates${NOCOLOR}"
echo ""
sudo docker pull linuxserver/tautulli:latest &&
echo ""
echo "${YELLOW}Looking for The Lounge Updates${NOCOLOR}"
echo ""
sudo docker pull linuxserver/thelounge:latest &&
echo ""
echo "${YELLOW}Looking for Transmission Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/transmission:latest &&
echo ""
echo "${YELLOW}Looking for Uptime Kuma Updates${NOCOLOR}"
echo ""
sudo docker pull louislam/uptime-kuma:latest &&
echo ""
echo "${YELLOW}Looking for VSCodium Updates${NOCOLOR}"
echo ""
sudo docker pull lscr.io/linuxserver/vscodium:latest &&
echo ""
echo "${YELLOW}Looking for Dockurr Windows VMs Updates${NOCOLOR}"
echo ""
sudo docker pull dockurr/windows:latest &&
echo ""
echo "${YELLOW}Looking for WordPress Updates${NOCOLOR}"
echo ""
sudo docker pull wordpress:latest &&

#echo ""
#echo "${YELLOW}Remove Unused Docker Images and Volumes${NOCOLOR}"
#echo ""
#sudo docker image prune -af &&
#sudo docker volume prune -af &&

# Update repo and system

echo ""
echo "${YELLOW}Updating Operating System with nala${NOCOLOR}"
echo ""

sudo nala update &&
echo ""
sudo nala upgrade -y &&
echo ""
sudo nala autopurge -y &&
echo ""
sudo nala autoremove -y &&
echo ""
sudo nala clean &&

#echo ""
#echo "Updating Operating System with apt"
#echo ""

#sudo apt update -y &&
#sudo apt upgrade -y &&
#sudo apt autoremove -y &&
#sudo apt --purge autoremove -y &&
#sudo apt clean -y &&

echo ""
echo "${YELLOW}Updating pip${NOCOLOR}"
echo ""
pip3 install --upgrade pip &&
echo ""
echo "${YELLOW}Updating glances${NOCOLOR}"
echo ""
pip3 install --upgrade glances &&

echo ""
echo "${YELLOW}Check for Snap Updates${NOCOLOR}"
echo ""
sudo snap refresh &&

sudo sh docker-compose-update.sh &&
sudo sh remove_old_snaps.sh &&

echo ""
echo "${YELLOW}Check for Snap Updates${NOCOLOR}"
echo ""
sudo snap refresh

#sudo mount -o remount,exec /dev &&
#sudo vbetool dpms off

echo ""
echo "${YELLOW}Remove Unused Docker Images and Volumes${NOCOLOR}"
echo ""
sudo docker image prune -af &&
sudo docker volume prune -af
echo ""
