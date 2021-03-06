#!/bin/bash

sudo echo "Hi, this script is starting OpenBTS in Fedora!"
sudo service asterisk restart
sudo -E gnome-terminal -x sh -c "sudo asterisk -r" &

cd ~/openBTS/
sudo -E gnome-terminal --tab -e "sudo smqueue/trunk/smqueue/smqueue" \
	--tab -e "sudo subscriberRegistry/trunk/sipauthserve" &

cd openbts/trunk/apps/
sudo -E gnome-terminal --tab -e "sudo ./OpenBTS" \
	--tab -e "sudo ./OpenBTSCLI" &
cd ~
