#!/bin/bash
backupDate=$(date  +'%F')
echo $backupDate
cd /home/fnxusa/docker/

# Stop Containers

cd authentik/
sudo docker-compose stop

cd ../chromium
sudo docker-compose stop

cd ../cloudflared
sudo docker-compose stop

cd ../duplicati
sudo docker-compose stop

cd ../firefox
sudo docker-compose stop

cd ../flame
sudo docker-compose stop

cd ../glances
sudo docker-compose stop

cd ../guacamole
sudo docker-compose stop

cd ../holoplay
sudo docker-compose stop

cd ../jackett
sudo docker-compose stop

cd ../minecraft-server
sudo docker-compose stop

cd ../mssql-fts
sudo docker-compose stop

cd ../nextcloud
sudo docker-compose stop

cd ../nginx
sudo docker-compose stop

cd ../openspeedtest
sudo docker-compose stop

cd ../opera
sudo docker-compose stop

cd ../phpmyadmin
sudo docker-compose stop

cd ../plex-media-server
sudo docker-compose stop

cd ../portainer
sudo docker-compose stop

cd ../pyload
sudo docker-compose stop

cd ../qbittorrent
sudo docker-compose stop

cd ../retroarch
sudo docker-compose stop

cd ../sftp
sudo docker-compose stop

cd ../smokeping
sudo docker-compose stop

cd ../snapdrop
sudo docker-compose stop

cd ../sonarr
sudo docker-compose stop

cd ../stirling-pdf
sudo docker-compose stop

cd ../syncthing
sudo docker-compose stop

cd ../tautulli
sudo docker-compose stop

cd ../the-lounge
sudo docker-compose stop

cd ../transmission
sudo docker-compose stop

cd ../uptime-kuma
sudo docker-compose stop

cd ../vscodium
sudo docker-compose stop

cd ../windows
sudo docker-compose stop

cd ../wordpress_megaron
sudo docker-compose stop

cd /home/fnxusa/
tar -czvf docker-backup-$backupDate.tar.gz /home/fnxusa/docker/

cd /home/fnxusa/docker/

# Start Containers

cd authentik/
sudo docker-compose start

cd ../chromium
sudo docker-compose start

cd ../cloudflared
sudo docker-compose start

cd ../duplicati
sudo docker-compose start

cd ../firefox
sudo docker-compose start

cd ../flame
sudo docker-compose start

cd ../glances
sudo docker-compose start

cd ../guacamole
sudo docker-compose start

cd ../holoplay
sudo docker-compose start

cd ../jackett
sudo docker-compose start

cd ../minecraft-server
sudo docker-compose start

cd ../mssql-fts
sudo docker-compose start

cd ../nextcloud
sudo docker-compose start

cd ../nginx
sudo docker-compose start

cd ../openspeedtest
sudo docker-compose start

cd ../opera
sudo docker-compose start

cd ../phpmyadmin
sudo docker-compose start

cd ../plex-media-server
sudo docker-compose start

cd ../portainer
sudo docker-compose start

cd ../pyload
sudo docker-compose start

cd ../qbittorrent
sudo docker-compose start

cd ../retroarch
sudo docker-compose start

cd ../sftp
sudo docker-compose start

cd ../smokeping
sudo docker-compose start

cd ../snapdrop
sudo docker-compose start

cd ../sonarr
sudo docker-compose start

cd ../stirling-pdf
sudo docker-compose start

cd ../syncthing
sudo docker-compose start

cd ../tautulli
sudo docker-compose start

cd ../the-lounge
sudo docker-compose start

cd ../transmission
sudo docker-compose start

cd ../uptime-kuma
sudo docker-compose start

cd ../vscodium
sudo docker-compose start

cd ../windows
sudo docker-compose start

cd ../wordpress_megaron
sudo docker-compose start

# now go back to home, and copy my backup file to my NAS
cd /home/fnxusa/
echo ""
echo "Backup copy is running..."
cp docker-backup-$backupDate.tar.gz "/mnt/storage/storage/01 - Server Backup/"

# remove the tar file from the main home folder after it's copied
rm docker-backup-$backupDate.tar.gz
