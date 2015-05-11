#!/bin/bash
if [ "$1" == "build" ]; then
  lb build
else
  cat binary.hybrid.iso
fi
