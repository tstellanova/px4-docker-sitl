
Divided up build and run of PX4 SITL into multiple stages
with associated containers. 


## Base PX4 development environment

Build the base development environment for PX4 (for aarch64)
```
docker build -f Dockerfile_base_px4_aarch64 -t px4_base .
```

## Building and running px4_sitl with mavlink support 
### Build px4_sitl firmware (with mavlink tcp server)
```
./run_mavlink_build.sh
```
### Build minimal (mavlink-based) px4_sitl container 
This embeds px4_sitl in a container 
```
docker build -f Dockerfile_sitl_mavlink_px4_aarch64 -t px4_sitl .
```

## Building and running px4_sitl with uorb injection support 
## Build px4_sitl firmware (with uorb sidecar )
```
./run_uorb_build.sh
```
### Build minimal (uorb-based) px4_sitl container 
This embeds px4_sitl in a container 
```
docker build -f Dockerfile_sitl_uorb_px4_aarch64 -t px4_sitl .
```


## Run px4_sitl in a container
Exposes various ports that px4_sitl needs to communicate with the outside world. Reconfigure as needed
```
docker run --rm --name px4_sitl0   -p 4560:4560 -p 14560:14560/udp  -it px4_sitl
```
