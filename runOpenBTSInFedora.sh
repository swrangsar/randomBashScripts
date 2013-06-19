#!/bin/bash

sudo echo "Hi, this script is starting OpenBTS in Fedora!"
sudo gnome-terminal -x sh -c "sudo asterisk -vvvvc && sudo asterisk -r" &

cd ~/openBTS/
sudo gnome-terminal --tab -e "sudo smqueue/trunk/smqueue/smqueue" \
	--tab -e "sudo subscriberRegistry/trunk/sipauthserve" &
sudo gnome-terminal -x sh -c "sudo openbts/trunk/apps/OpenBTS" &
sudo gnome-terminal -x sh -c "sudo openbts/trunk/apps/OpenBTSCLI" &
