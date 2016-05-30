#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

#. ./conf.sh
. /home/vagrant/provision/conf.sh

. /home/vagrant/provision/install/update.sh

if [ "$PHP" = "yes" ]
then
  if [ "$PHP_VERSION" = "php 5.6" ]
  then
    . /home/vagrant/provision/install/php/php56.sh
  fi
fi
