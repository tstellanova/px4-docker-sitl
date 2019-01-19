#!/bin/bash

mkdir -p proj
cd proj
if [ ! -d "/Firmware" ]; then
  git clone https://github.com/PX4/Firmware
fi
cd Firmware
make px4_sitl

