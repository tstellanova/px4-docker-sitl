#!/bin/bash

# start running mavulator in the background
/simu/mavulator &

/simu/Firmware/Tools/sitl_run.sh /simu/Firmware/build/px4_sitl_default/bin/px4 none none none /simu/Firmware /simu/Firmware/build/px4_sitl_default

