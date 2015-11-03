#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo;
read -p "Enter new computer name and press [ENTER]: " -r new_name;

echo;
read -p "Are you absolutely sure you want to use name $new_name? [Y/n] " -n 1 -r confirm;
echo;
if [[ ! $confirm =~ ^[Y]$ ]];
    then
        exit 1;
    else
        echo "Okay, proceeding.";
fi;


sudo scutil --set ComputerName "$new_name"
sudo scutil --set HostName "$new_name"
sudo scutil --set LocalHostName "$new_name"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$new_name"

echo "Done.";
