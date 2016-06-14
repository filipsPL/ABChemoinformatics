#!/bin/bash

mkdir pymol
cd pymol


sudo apt-get update
sudo apt-get install subversion python-numpy build-essential python-dev python-pmw libglew-dev freeglut3-dev libpng-dev libfreetype6-dev libxml2-dev

svn co svn://svn.code.sf.net/p/pymol/code/trunk/pymol

prefix=/opt/pymol-svn
modules=$prefix/modules

# enable c++11
export CPPFLAGS="-std=c++0x"

# If you want to install as root, then split this line up in "build"
# and "install" and run the "install" with "sudo"
sudo python setup.py build install \
    --home=$prefix \
    --install-lib=$modules \
    --install-scripts=$prefix
