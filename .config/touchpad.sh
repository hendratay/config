#!/bin/bash

touchpad=`xinput | grep TouchPad | grep -o "id=.." | grep -o "[0-9]*"`
statetouchpad=`xinput list-props "$touchpad" | grep "Device Enabled" | grep -o "[01]$"`

trackpoint=`xinput | grep TrackPoint | grep -o "id=.." | grep -o "[0-9]*"`
statetrackpoint=`xinput list-props "$trackpoint" | grep "Device Enabled" | grep -o "[01]$"`

if [ $statetouchpad == '1' ] && [ $statetrackpoint == '1' ] ; then
  xinput --disable $touchpad
elif [ $statetouchpad == '0' ] && [ $statetrackpoint == '1' ] ; then
  xinput --disable $trackpoint
else
  xinput --enable $touchpad && xinput --enable $trackpoint
fi

#trackpoint=`xinput | grep TrackPoint | grep -o "id=.." | grep -o "[0-9]*"`
#statetrackpoint=`xinput list-props "$trackpoint" | grep "Device Enabled" | grep -o "[01]$"`

#if [ $statetrackpoint == '1' ] ; then
    #xinput --disable $trackpoint
#else
    #xinput --enable $trackpoint
#fi
