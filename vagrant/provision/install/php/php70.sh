#!/bin/bash

sudo locale-gen "en_US.UTF-8"

echo "\n==================================="
echo "\n--- Installing PHP 7          ---"
echo "\n==================================="
echo "\n--- Python-software-properties ---"
apt-get install python-software-properties
echo "\n--- Adding ppa:ondrej/php  ---"
echo "\n===================================\n"
add-apt-repository ppa:ondrej/php

echo "\n=============================="
echo "\n--- Updating packages list ---"
echo "\n==============================\n"
apt-get update

echo "\n==================================="
echo "\n--- Installing PHP 7          ---"
echo "\n===================================\n"
apt-get install -y php7.0

echo "\n==================================="
echo "\n--- Install PHP 7 necessary Modules ---"
echo "\n===================================\n"
apt-get install php7.0-mysql php7.0-curl php7.0-json php7.0-cgi