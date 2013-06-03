#!/bin/bash

sudo apt-get install autoconf libtool libosip2-dev libortp-dev libusb-1.0-0-dev g++ sqlite3 libsqlite3-dev erlang libreadline6-dev libboost-all-dev

cd ~
svn co http://wush.net/svn/range/software/public OpenBTS
cd OpenBTS/openbts/trunk
autoreconf -i
./configure --with-uhd --with-resamp --with-extref
make
cd apps
ln -s ../Transceiver52M/transceiver .

cd ~/OpenBTS/openbts/trunk
sudo rm -rf /etc/OpenBTS
sudo mkdir /etc/OpenBTS
sudo sqlite3 -init ./apps/OpenBTS.example.sql /etc/OpenBTS/OpenBTS.db ".quit"
sqlite3 /etc/OpenBTS/OpenBTS.db .dump
cd apps
sudo ./OpenBTS
