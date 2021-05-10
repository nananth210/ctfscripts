#!/bin/bash

cd /etc

## Test if a local host is Arch-based.
if [ -d /etc/pacman.d ]
then 
	## Run the Arch version of the update command
	sudo pacman -Syu 
fi

## Test if a local host is Debian-based.
if [ -d /etc/apt ] 
then 	## Run the Debian version of the update command 
	sudo apt-get update && sudo apt-get dist-upgrade 
fi 
