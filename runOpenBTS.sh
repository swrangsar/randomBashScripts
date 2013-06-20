#!/bin/bash

sudo echo "Hi, this script is starting OpenBTS!"
sudo gnome-terminal -x sh -c "sudo asterisk -r" &

cd ~/OpenBTS/public/
sudo gnome-terminal -x sh -c "sudo openbts/trunk/apps/OpenBTS" &
sudo gnome-terminal --tab -e "sudo smqueue/trunk/smqueue/smqueue" \
--tab -e "sudo subscriberRegistry/trunk/sipauthserve" \
--tab -e "sudo openbts/trunk/apps/OpenBTSCLI" &
