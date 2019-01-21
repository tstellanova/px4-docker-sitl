#!/bin/bash

mkdir -p $PWD/proj
cd $PWD/proj
if [ ! -d "./Firmware" ]; then
  git clone --branch sitl_tcp_server  https://github.com/tstellanova/Firmware
fi
cd Firmware
make px4_sitl 

