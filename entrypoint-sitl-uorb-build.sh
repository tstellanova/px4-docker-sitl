#!/bin/bash

mkdir -p $PWD/proj
cd $PWD/proj
if [ ! -d "./px4firmware-uorb" ]; then
  git clone --branch tcs_sidecar_trunk https://github.com/tstellanova/px4firmware px4firmware-uorb
fi
cd px4firmware-uorb
make px4_sitl 

