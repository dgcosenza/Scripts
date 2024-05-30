sudo chown fnxusa:fnxusa -R ~/docker/nginx/config/www &&
sudo find ~/docker/nginx/config/www/courses -type d -exec chmod 755 {} + &&
sudo find ~/docker/nginx/config/www/courses -type f -exec chmod 644 {} + &&
sudo find ~/docker/nginx/config/www -type f -name '._*' -exec rm {} \; &&
sudo find ~/docker/nginx/config/www -type f -name '.DS_Store' -exec rm {} \;
