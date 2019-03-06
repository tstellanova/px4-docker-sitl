#!/bin/bash

mkdir -p $PWD/proj
cd $PWD/proj
if [ ! -d "./Firmware" ]; then
  git clone --branch sitl_tcp_rebuild  https://github.com/tstellanova/px4firmware
fi
cd px4firmware
make px4_sitl 

