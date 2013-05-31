#!/bin/bash

#this script builds gnuradio in ubuntu 11.04
# to install run
# > cd ~/gnuradio/build
# > sudo make install

sudo apt-get -y install libfontconfig1-dev libxrender-dev libpulse-dev \
swig  g++ automake autoconf libtool python-dev libfftw3-dev libcppunit-dev \
libboost-all-dev libusb-dev libusb-1.0-0-dev fort77 libsdl1.2-dev \
python-wxgtk2.8 git-core libqt4-dev python-numpy ccache python-opengl \
libgsl0-dev python-cheetah python-lxml doxygen qt4-dev-tools \
libusb-1.0-0-dev libqwt5-qt4-dev libqwtplot3d-qt4-dev pyqt4-dev-tools \
python-qwt5-qt4 cmake git-core wget libxi-dev python-docutils \
gtk2-engines-pixbuf r-base-dev python-tk liborc-0.4-0 liborc-0.4-dev \
libasound2-dev python-gtk2

cd ~
pwd
git clone http://gnuradio.org/git/gnuradio.git
cd gnuradio
mkdir build
cd build
cmake ../
make
make test
cd ~
