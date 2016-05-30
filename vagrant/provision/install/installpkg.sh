#!/bin/bash

installpkg(){
    echo "\n==============================\n"
    echo "\n--- Installing $1 ---\n"
    echo "\n==============================\n"
    dpkg-query --status $1 > /dev/null || apt-get install -y $1
}
