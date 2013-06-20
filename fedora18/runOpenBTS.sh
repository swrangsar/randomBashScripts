#!/bin/bash

sudo echo "Hi, this script is starting OpenBTS in Fedora!"
sudo gnome-terminal -x sh -c "sudo asterisk -r" &

cd ~/openBTS/
sudo gnome-terminal --tab -e "sudo smqueue/trunk/smqueue/smqueue" \
	--tab -e "sudo subscriberRegistry/trunk/sipauthserve" &

cd openbts/trunk/apps/
sudo gnome-terminal -x sh -c "sudo ./OpenBTS" &
sudo gnome-terminal -x sh -c "sudo ./OpenBTSCLI" &
cd ~