#!/bin/bash

FLAGS="-f make/main.mk"
CLEAN="clean $FLAGS"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  make $CLEAN
elif [[ "$OSTYPE" == "msys" ]]; then
  COMMAND="make $CLEAN"
  pwsh -Command $COMMAND
fi
