#!/bin/bash

sudo apt-get -y install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff4-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip

cd ~
wget https://github.com/Itseez/opencv/archive/3.0.0.zip -O opencv-3.0.0.zip
unzip opencv-3.0.0.zip

#cd ~
#git clone --depth 1 https://github.com/Itseez/opencv_contrib.git opencv_contrib

cd opencv-3.0.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local 

export PYTHON_INCLUDE_DIRS="/usr/include/python2.7"
export PYTHON_LIBRARYS="/usr/lib/x86_64-linux-gnu/libpython2.7.so"

make -j 4
sudo make install
sudo ldconfig

sudo apt-get install python-opencv
