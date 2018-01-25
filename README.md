# storj

example of init.sh; 

#!/bin/bash

storjshare daemon
storjshare start --config /config/config-1
storjshare start --config /config/config-2
storjshare start --config /config/config-3
storjshare start --config /config/config-4
storjshare start --config /config/config-5

sleep 60
storjshare status | sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g"

# loop status every hour;

while :
do

        sleep 3600
        storjshare status | sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g"

done
