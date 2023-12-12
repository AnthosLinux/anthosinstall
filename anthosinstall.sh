#!/bin/bash

red="\e[31m"
none="\e[0m"

bold=$(tput bold)
normal=$(tput sgr0)

function locale() {
    echo ""
	ls /usr/share/kbd/keymaps/**/*.map.gz
    echo ""
    read -e -p "${bold}Do you want to change the keyboard locale? (y or n)${normal}" choice
}

locale

while [ "$choice" != "y" ]; do
    if [ "$choice" = "n" ]; then
        echo "you select no"
        sleep 1
        locale
    fi
done
