#!/bin/bash

INTERNAL="eDP"
EXTERNAL=$(xrandr | grep " connected" | grep -v "$INTERNAL" | awk '{print $1}')

if grep -q closed /proc/acpi/button/lid/LID/state; then
  xrandr \
    --output "$INTERNAL" --off \
    --output "$EXTERNAL" --auto
else
  xrandr \
    --output "$INTERNAL" --auto \
    --output "$EXTERNAL" --auto --above "$INTERNAL"
fi
