#!/bin/bash

## Resize display to fit dual screen display
## A 4k main screen and a Full HD external screen
xrandr --fb 3840x4320 --output eDP-1 --mode 3840x2160 --pos 0x2160 --auto --output HDMI-1 --mode 1920x1080 --scale 2x2 --pos 0x0 --auto --panning 3840x2160+0+0
## Force update of gnome scaling
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gdk/WindowScalingFactor': <2>}"
gsettings set org.gnome.desktop.interface scaling-factor 2
