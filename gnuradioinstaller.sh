#!/bin/bash
prompt="[swrangsar]:"
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi
echo "${prompt} changing directory to dports..."
cd /opt/local/var/macports/sources/svn.macports.org/trunk/dports/
echo "${prompt} starting svn update..."
svn update
echo "${prompt} starting portindex..."
portindex
echo "${prompt} starting gnuradio installation"
port -v install qwt52
port -v install py27-pyqwt
port -v install gnuradio +full configure.compiler=llvm-gcc-4.2
port -v install rtl-sdr
port -v install wget git-core octave ruby lynx libosip2 py27-matplotlib
cd -