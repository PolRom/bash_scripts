#! /bin/bash

sudo apt autoremove
sudo apt clean
sudo apt autoclean

/home/trydance/.emacs.d/bin/doom purge

snap list --all | awk '/disabled/{print $1, $3}' | 
	while read snapname revision; do 
		sudo snap remove "$snapname" --revision="$revision"
    done
