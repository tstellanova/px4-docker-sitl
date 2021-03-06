#!/bin/bash

docker build -f Dockerfile_build_px4_mavlink_aarch64 -t px4_mavlink_build .
# creates a shared proj directory where firmware sources can live
mkdir -p $PWD/proj
docker run --rm --name px4_build0 -v $PWD/proj:/proj -it px4_mavlink_build
# This embeds px4_sitl in a container for easy running
docker build -f Dockerfile_sitl_mavlink_px4_aarch64 -t px4_mavlink_sitl .
