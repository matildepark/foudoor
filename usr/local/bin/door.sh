#!/bin/bash


# Script to open door

logger -t door.sh -p local0.notice FouDoor activated: $USER opened the door

TIMEOUT=10

/usr/bin/gpioset "P9_14 [ehrpwm1a]"=1 & GP=$!; sleep $TIMEOUT; kill $GP
sleep $TIMEOUT
