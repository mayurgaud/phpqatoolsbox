#!/bin/bash

sudo locale-gen "en_US.UTF-8"

echo "\n==================================="
echo "\n--- Installing PHP 5.6          ---"
echo "\n--- Adding ppa:ondrej/php5-5.6  ---"
echo "\n===================================\n"
add-apt-repository ppa:ondrej/php5-5.6 -y

echo "\n=============================="
echo "\n--- Updating packages list ---"
echo "\n==============================\n"
apt-get update -y

echo "\n==================================="
echo "\n--- Installing PHP 5.6          ---"
echo "\n===================================\n"
apt-get install php5 -y
