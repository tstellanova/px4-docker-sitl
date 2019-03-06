#!/bin/bash

mkdir -p $PWD/proj
cd $PWD/proj
if [ ! -d "./px4firmware-mavlink" ]; then
  git clone --branch sitl_tcp_rebuild  https://github.com/tstellanova/px4firmware px4firmware-mavlink
fi
cd px4firmware-mavlink
make px4_sitl 

