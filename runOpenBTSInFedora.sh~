#!/bin/bash

sudo echo "Hi, this script is starting OpenBTS in Fedora!"
sudo gnome-terminal -x sh -c "sudo asterisk -r" &

sleep 1

cd ~/openBTS/
sudo gnome-terminal --tab -e "sudo smqueue/trunk/smqueue/smqueue" \
	--tab -e "sudo subscriberRegistry/trunk/sipauthserve" &
sleep 1

sudo gnome-terminal -x sh -c "sudo openbts/trunk/apps/OpenBTS" &
sudo gnome-terminal -x sh -c "sudo openbts/trunk/apps/OpenBTSCLI" &

