#!/bin/bash

sudo locale-gen "en_US.UTF-8"

echo "\n==================================="
echo "\n--- Installing PHP 5.4          ---"
echo "\n--- Installing python-software-properties  ---"
echo "\n===================================\n"
apt-get install python-software-properties
echo "\n--- Adding ppa:ondrej/php5-oldstable  ---"
echo "\n===================================\n"
add-apt-repository ppa:ondrej/php5-oldstable

echo "\n=============================="
echo "\n--- Updating packages list ---"
echo "\n==============================\n"
apt-get update

echo "\n==================================="
echo "\n--- Installing PHP 5.4          ---"
echo "\n===================================\n"
apt-get install -y php5
