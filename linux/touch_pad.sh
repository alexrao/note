#!/bin/bash

path_tmp="/tmp/.touch_pad.tmp"

if [ -f "$path_tmp" ] ; then
    rm "$path_tmp"
    synclient touchpadoff=0
    echo "open touchpad"
else
    touch "$path_tmp"
    synclient touchpadoff=1
    echo "close touchpad"
fi
