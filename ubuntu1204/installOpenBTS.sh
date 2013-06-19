#!/bin/bash

sudo apt-get install ubuntu-restricted-extras asterisk autoconf \
libtool libosip2-dev libortp-dev libusb-1.0-0-dev g++ sqlite3 \
libsqlite3-dev erlang libreadline6-dev libboost-all-dev


cd ~
mkdir OpenBTS
svn co http://wush.net/svn/range/software/public OpenBTS


# build openbts
cd ~/OpenBTS/openbts/trunk
autoreconf -i
./configure --with-uhd --with-resamp
make
cd apps
ln -s ../Transceiver52M/transceiver .

# configure openbts
cd ~/OpenBTS/openbts/trunk
sudo rm -rf /etc/OpenBTS
sudo mkdir /etc/OpenBTS
sudo sqlite3 -init ./apps/OpenBTS.example.sql /etc/OpenBTS/OpenBTS.db ".quit"
sqlite3 /etc/OpenBTS/OpenBTS.db .dump
cd apps
# sudo ./OpenBTS


# set up the subscriber registry
cd ~/OpenBTS/
cd subscriberRegistry/trunk/configFiles/
sudo mkdir -p /var/lib/asterisk/sqlite3dir
sudo sqlite3 -init subscriberRegistryInit.sql /var/lib/asterisk/sqlite3dir/sqlite3.db ".quit"
sudo mkdir /var/run/OpenBTS


# build sipauthserve
cd ~/OpenBTS/subscriberRegistry/trunk
make

# configure sipauthserve
sudo sqlite3 -init sipauthserve.example.sql /etc/OpenBTS/sipauthserve.db ".quit"


# build smqueue
cd ~/OpenBTS/smqueue/trunk
autoreconf -i
./configure
make

# configure smqueue
sudo sqlite3 -init smqueue/smqueue.example.sql /etc/OpenBTS/smqueue.db ".quit"
