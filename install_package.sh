#!/bin/bash


<<info 
this script will install pacakage
that you pass in the argument

eg. ./install_package.sh nginx
./install_package.sh docker.io
./install_package.sh unzip
info

echo "Installing $1"
sudo apt-get update
sudo apt-get install $1 -y
echo "Installation completed"
