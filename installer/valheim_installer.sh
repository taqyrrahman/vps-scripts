#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo echo steam steam/license note '' | sudo debconf-set-selections
sudo echo steam steam/question select 'I AGREE' | sudo debconf-set-selections
#'
sudo apt install lib32gcc1 steamcmd -y
mkdir /home/qittu/valheim
steamcmd +login anonymous +force_install_dir /home/qittu/valheim +app_update 896660 validate +exit
cp /home/qittu/vps-scripts/runner/start_valheim.sh /home/qittu/valheim/start_valheim.sh
chmod +x /home/qittu/valheim/start_valheim.sh