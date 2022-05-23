#!/usr/bin/env bash

set -euo pipefail

sudo apt autoremove
sudo apt clean
sudo apt autoclean

snap list --all | awk '/disabled/{print $1, $3}' | 
	while read snapname revision; do 
		sudo snap remove "$snapname" --revision="$revision"
    done

flatpak uninstall --unused
