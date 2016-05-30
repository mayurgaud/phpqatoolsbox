#!/bin/bash

sudo locale-gen "en_US.UTF-8"

echo "\n==================================="
echo "\n--- Installing PHP 5.5          ---"
echo "\n===================================\n"
echo "\n=============================="
echo "\n--- Updating packages list ---"
echo "\n==============================\n"
apt-get update -y

echo "\n==================================="
echo "\n--- Installing PHP 5.5          ---"
echo "\n===================================\n"
apt-get -y install php5 php5-mhash php5-mcrypt php5-curl php5-cli php5-mysql php5-gd php5-intl php5-xsl
