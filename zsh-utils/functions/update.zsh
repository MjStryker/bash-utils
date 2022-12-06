#!/usr/bin/zsh

alias ,update='
echo "\n-- UPDATE"
sudo apt update -y

echo "\n-- UPGRADE"
sudo apt upgrade -y

echo "\n-- AUTO-REMOVE"
sudo apt autoremove -y'
