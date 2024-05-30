sudo chown fnxusa:fnxusa -R /mnt/storage/storage &&
sudo find /mnt/storage/storage -type d -exec chmod 755 {} + &&
sudo find /mnt/storage/storage -type f -exec chmod 644 {} + &&
sudo find /mnt/storage/storage -type f -name '._*' -exec rm {} \; &&
sudo find /mnt/storage/storage -type f -name '.DS_Store' -exec rm {} \;
