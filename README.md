
Divided up build and run of PX4 SITL into multiple stages
with associated containers. 


## Base PX4 development environment

Build the base development environment for PX4 (for aarch64)
```
docker build -f Dockerfile_base_px4_aarch64 -t px4_base .
```

## Build px4_sitl firmware
```
docker build -f Dockerfile_build_px4_aarch64 -t px4_build .
# creates a shared proj directory where firmware sources can live
mkdir -p $PWD/proj
docker run --rm --name px4_build0 -v $PWD/proj:/proj -it px4_build
```

## Build minimal px4_sitl container 
This embeds px4_sitl in a container 
```
docker build -f Dockerfile_sitl_px4_aarch64 -t px4_sitl .
```

## Run px4_sitl in a container
Exposes various ports that px4_sitl needs to communicate with the outside world. Reconfigure as needed
```
docker run --rm --name px4_sitl0   -p 4560:4560 -p 14560:14560/udp  -it px4_sitl
```
