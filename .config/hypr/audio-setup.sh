#!/bin/bash

# pkill -x pipewire
# pkill -x pipewire-pulse
# pkill -x wireplumber

killall pipewire
killall pipewire-pulse
killall wireplumber

pipewire &
pipewire-pulse &
wireplumber &
