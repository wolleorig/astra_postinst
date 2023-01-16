#!/bin/bash
apt install qtcreator
apt install lazarus
apt install git libxml2-dev libgtk-3-dev intltool libmpfr-dev libcurl4-gnutls-dev
curl -s https://thonny.org/installer-for-linux
mkdir calculator
cd calculator/
git clone https://github.com/Qalculate/libqalculate.git
cd libqalculate
./autogen.sh
./configure
make
make install
ldconfig
cd ..
git clone https://github.com/Qalculate/qalculate-gtk.git
./autogen.sh
./configure
make
make install
cd ..
cd ..
rm -rf calculator/
ln -s /usr/local/bin/qalculate-gtk $HOME/Desktop/Qalculate

