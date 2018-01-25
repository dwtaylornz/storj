#!/bin/bash
# start daemon and instances
# loop status with colours removed from output
storjshare daemon
storjshare start --config /config/config-1
storjshare start --config /config/config-2
storjshare start --config /config/config-3
storjshare start --config /config/config-4
storjshare start --config /config/config-5

# loop status every hour;

while :
do
        sleep 60
        storjshare status | sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g"        
        sleep 3540
done
