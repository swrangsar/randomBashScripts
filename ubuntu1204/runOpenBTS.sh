#!/bin/bash

sudo echo "Hi, this script starts OpenBTS in Ubuntu 12.04!"
sudo service asterisk restart
sudo gnome-terminal -x sh -c "sudo asterisk -r" &

cd ~/OpenBTS/
sudo gnome-terminal --tab -e "sudo smqueue/trunk/smqueue/smqueue" \
	--tab -e "sudo subscriberRegistry/trunk/sipauthserve" &

cd openbts/trunk/apps/
sudo gnome-terminal --tab -e "sudo ./OpenBTS" \
	--tab -e "sudo ./OpenBTSCLI" &
cd ~
