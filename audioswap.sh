#!/bin/bash

CORSAIR="alsa_output.usb-Corsair_CORSAIR_VIRTUOSO_XT_Wireless_Gaming_Receiver_16d6560700060215-00.analog-stereo"
EDIFIER="alsa_output.usb-bestechnic_EDIFIER_M60_20160406.1-00.iec958-stereo"

CURRENT_SINK=$(pactl get-default-sink)

if [[ "$CURRENT_SINK" == "$CORSAIR" ]]; then
    pactl set-default-sink $EDIFIER
else
    pactl set-default-sink $CORSAIR
fi
