#!/bin/bash

#sudo asterisk -r
cd ~/OpenBTS/public/smqueue/trunk/smqueue
sudo ./smqueue

cd ~/OpenBTS/public/subscriberRegistry/trunk/
sudo ./sipauthserve

cd ~/OpenBTS/public/openbts/trunk/apps
sudo ./OpenBTS

cd ~/OpenBTS/public/openbts/trunk/apps
sudo ./OpenBTSCLI
