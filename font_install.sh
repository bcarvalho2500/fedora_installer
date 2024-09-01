#!/bin/bash

# Download NerdFonts
curl -L --create-dirs -o ~/Downloads/FiraCode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip

# Make font directory
sudo mkdir -p /usr/local/share/fonts/FiraCodeNF

# Unzip the fonts
unzip ~/Downloads/FiraCode.zip -d ~/Downloads/FiraCode

# Copy the fonts over
sudo cp ~/Downloads/FiraCode/*.ttf /usr/local/share/fonts/FiraCodeNF/

# Update SELinux Labels
sudo chown -R root: /usr/local/share/fonts/FiraCodeNF
sudo chmod 644 /usr/local/share/fonts/FiraCodeNF/*
sudo restorecon -vFr /usr/local/share/fonts/FiraCodeNF

# Update font cache
sudo fc-cache -v
