#!/bin/bash

mkdir -p $PWD/proj
cd $PWD/proj
if [ ! -d "./mavulator-uds" ]; then
  git clone --branch wip_unix_domain_sockets https://github.com/tstellanova/mavulator mavulator-uds
fi
if [ ! -d "./px4firmware-uorb" ]; then
  git clone --branch tcs_sidecar_uds_wip https://github.com/tstellanova/px4firmware px4firmware-uorb
fi

cd px4firmware-uorb
git submodule init
git submodule update
make px4_sitl
cd ..

cd mavulator-uds
cargo build
cd ..

