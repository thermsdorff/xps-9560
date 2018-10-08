#!/bin/bash

## Resize display to fit 4K main screen resolution
xrandr --fb 3840x2160 --output eDP-1 --scale 1x1 --auto --mode 3840x2160 --pos 0x0 --output HDMI-1 --off
## Force update of gnome scaling
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gdk/WindowScalingFactor': <2>}"
gsettings set org.gnome.desktop.interface scaling-factor 2
