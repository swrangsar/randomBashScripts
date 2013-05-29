#!/bin/sh
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
echo "${prompt} starting port upgrade..."
port upgrade outdated
echo "${prompt} Done upgrading all the macports :)"
cd -