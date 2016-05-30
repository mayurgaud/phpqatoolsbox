#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

echo "\n=============================="
echo "\n--- Updating packages list ---"
echo "\n==============================\n"
apt-get update && apt-get install -y language-pack-en-base && export LC_ALL=en_US.UTF-8 && export LANG=en_US.UTF-8 && apt-get install -y software-properties-common && add-apt-repository -y ppa:ondrej/php5-5.6 && add-apt-repository -y ppa:ondrej/mariadb-10.0 &&  apt-get update && apt-get -y upgrade

echo "\n============================================="
echo "\n--- Installing Python software properties ---"
echo "\n=============================================\n"
apt-get install python-software-properties > /dev/null

echo "\n=============================="
echo "\n--- Updating packages list ---"
echo "\n==============================\n"
apt-get update && sudo apt-get upgrade
