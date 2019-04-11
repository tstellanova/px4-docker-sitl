#!/bin/bash

docker build -f Dockerfile_build -t uorb_dual_build .
# creates a shared proj directory where firmware sources can live
mkdir -p $PWD/proj
docker run --rm --name px4_build3 -v $PWD/proj:/proj -it uorb_dual_build
# This embeds px4_sitl in a container for easy running
docker build -f Dockerfile_run -t px4_dual_uorb_sitl .
