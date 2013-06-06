#!/bin/bash

sudo echo "LOL"
sudo gnome-terminal -x sh -c "sudo asterisk -r" &

cd ~/OpenBTS/public/smqueue/trunk/smqueue
sudo gnome-terminal -x sh -c "sudo ./smqueue" &

cd ~/OpenBTS/public/subscriberRegistry/trunk/
sudo gnome-terminal -x sh -c "sudo ./sipauthserve" &

cd ~/OpenBTS/public/openbts/trunk/apps
sudo gnome-terminal -x sh -c "sudo ./OpenBTS" &

cd ~/OpenBTS/public/openbts/trunk/apps
sudo gnome-terminal -x sh -c "sudo ./OpenBTSCLI" &
