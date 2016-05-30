#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

#. ./conf.sh
. /home/vagrant/provision/conf.sh

. /home/vagrant/provision/install/update.sh

if [ "$PHP" = "yes" ]
then
    case "$PHP_VERSION" in
        "php 7.0" ) . /home/vagrant/provision/install/php/php70.sh
        ;;
        "php 5.6" ) . /home/vagrant/provision/install/php/php56.sh
        ;;
        "php 5.5" ) . /home/vagrant/provision/install/php/php55.sh
        ;;
        "php 5.4" ) . /home/vagrant/provision/install/php/php54.sh
        ;;
    esac
fi

if [ "$QA" = "yes" ]
then
    if [ "$PHPMD" = "yes" ]
     then
        . /home/vagrant/provision/install/qa/messdetector.sh
    fi
    if [ "$PHPCS" = "yes" ]
     then
        . /home/vagrant/provision/install/qa/codesniffer.sh
    fi
    if [ "$PHPCP" = "yes" ]
     then
        . /home/vagrant/provision/install/qa/copyPasteDetector.sh
    fi
fi