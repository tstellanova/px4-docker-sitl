#!/bin/bash

mkdir -p $PWD/proj
cd $PWD/proj
if [ ! -d "./Firmware" ]; then
  git clone https://github.com/PX4/Firmware
fi
cd Firmware
make px4_sitl none

