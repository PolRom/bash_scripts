#!/usr/bin/env bash

set -euo pipefail

dpkg --get-selections | grep -v deinstall > ~/Documents/backup_files/dpkg_list
snap list > ~/Documents/backup_files/snap_list
flatpak list > ~/Documents/backup_files/flatpak_list
cp -u ~/.var/app/com.google.Chrome/config/google-chrome/Default/Bookmarks ~/Documents/backup_files/
cp -u ~/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/Default/Bookmarks ~/Documents/backup_files/brave/
