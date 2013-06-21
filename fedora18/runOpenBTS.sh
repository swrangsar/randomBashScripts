#!/bin/bash

sudo echo "Hi, this script is starting OpenBTS in Fedora!"
sudo service asterisk restart
<<<<<<< HEAD
sudo chkconfig asterisk on
=======
>>>>>>> 6101a4b61d580d77b61a53142dbc31afebe6a934
sudo gnome-terminal -x sh -c "sudo asterisk -r" &

cd ~/openBTS/
sudo gnome-terminal --tab -e "sudo smqueue/trunk/smqueue/smqueue" \
	--tab -e "sudo subscriberRegistry/trunk/sipauthserve" &

cd openbts/trunk/apps/
sudo gnome-terminal --tab -e "sudo ./OpenBTS" \
<<<<<<< HEAD
	--tab -e "sudo ./OpenBTSCLI" &
cd ~
=======
     --tab -e "sudo ./OpenBTSCLI" &
cd ~
>>>>>>> 6101a4b61d580d77b61a53142dbc31afebe6a934
