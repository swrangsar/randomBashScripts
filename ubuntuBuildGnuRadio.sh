#!/bin/bash

#this script builds gnuradio-3.6.5 in ubuntu 11.04
# to install run
# > cd ~/gnuradio-3.6.5/build
# > sudo make install

if [[ $UID != 0 ]]; then
echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

apt-get -y install git-core autoconf automake  libtool g++ python-dev swig \
pkg-config libboost-all-dev libfftw3-dev libcppunit-dev libgsl0-dev \
libusb-dev sdcc libsdl1.2-dev python-wxgtk2.8 python-numpy \
python-cheetah python-lxml doxygen python-qt4 python-qwt5-qt4 libxi-dev \
libqt4-opengl-dev libqwt5-qt4-dev libfontconfig1-dev libxrender-dev wget

cd /home/swrangsar
pwd
wget http://gnuradio.org/releases/gnuradio/gnuradio-3.6.5.tar.gz
tar -xzvf gnuradio-3.6.5.tar.gz
cd gnuradio-3.6.5
mkdir build
cd build
cmake ../
make
make test
cd /home/swrangsar
