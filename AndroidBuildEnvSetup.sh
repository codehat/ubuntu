#!/bin/sh
sudo apt-get update
sudo apt-get install -y git gnupg flex bison gperf build-essential
sudo apt-get install -y zip curl libc6-dev libncurses5:i386 libncurses5-dev:i386 x11proto-core-dev
sudo apt-get install -y libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386
sudo apt-get install -y libgl1-mesa-dev g++-multilib mingw32 tofrodos
sudo apt-get install -y python-markdown libxml2-utils xsltproc zlib1g-dev:i386  
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
sudo apt-get install -y libncurses5 libncurses5-dev
sudo apt-get install -y gcc
sudo apt-get install -y g++
sudo apt-add-repository 'deb http://mirrors.163.com/ubuntu/ hardy multiverse'
sudo apt-get update
sudo apt-get install sun-java6-jdk
sudo apt-add-repository --remove 'deb http://mirrors.163.com/ubuntu/ hardy multiverse'
sudo apt-get update

