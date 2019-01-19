
Divided up build and run of PX4 SITL into multiple stages
with associated containers. 

## Build and Run

Some useful docker commands:

```
docker build -f Dockerfile_base_px4_aarch64 -t px4_base .

docker build -f Dockerfile_build_px4_aarch64 -t px4_build .
docker run  --rm --name px4_build0 -v $PWD/proj:/proj -it px4_build
 
docker build -f Dockerfile_sitl_px4_aarch64 -t px4_sitl .
docker run --rm --name px4_sitl0   -p 4560:4560 -p 5760:5760 -p 14560:14560  -it px4_sitl 
```
