#!/bin/bash

ACTIVE_OUTPUTS=$(i3-msg -t get_outputs | jq -r '.[] | select(.active) | .name')

TARGET=$(echo "$ACTIVE_OUTPUTS" | rofi -dmenu -p "Move all workspaces to:")

[ -z "$TARGET" ] && exit 0

workspaces=$(i3-msg -t get_workspaces | jq -r ".[] | select(.output != \"$INTERNAL\") | .name")

for ws in $workspaces; do
  i3-msg "workspace $ws; move workspace to output $TARGET"
done
