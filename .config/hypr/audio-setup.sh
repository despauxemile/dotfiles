#!/bin/bash

pkill -x pipewire
pkill -x pipewire-pulse
pkill -x wireplumber

pipewire &
pipewire-pulse &
wireplumber &
