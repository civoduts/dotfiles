#!/bin/bash

if [ "$1" = "reset" ]; then
  redshift -x -m randr
  exit 0
fi

redshift -l 0:0 -m randr -P -O "$1"
