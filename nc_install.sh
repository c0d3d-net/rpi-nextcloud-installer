#!/bin/bash

#Pakete
echo "Lade benötigte Pakete herunter"
sudo apt-get install -y php5 php5-gd sqlite php5-sqlite php5-curl
cd /var/www/html
echo "Heruntergeladen!"

#Nextcloud herunterladen
echo "Lade Nextcloud herunter"
curl https://download.nextcloud.com/server/releases/nextcloud-12.0.3.tar.bz2 | sudo tar -jxv
echo "Heruntergeladen!"

#Berechtigungen
echo "Setze Berechtigungen"
cd nextcloud
sudo mkdir -p data
sudo chown www-data:www-data config apps data
sudo chmod 750 data
echo "abgeschlossen"

#Apache neustarten
sudo service apache2 restart

# SSH Client
# SSL Zertifikat
# Config mit externer Festplatte
# HTTPS
# HTSP
# PHP-Cache
# OP-Cache
# No-IP-Client
