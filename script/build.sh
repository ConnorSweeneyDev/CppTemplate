#!/bin/bash

CWD=$(pwd)
CPU_COUNT_MULTIPLIER=$(nproc)
DEBUG=1
FLAGS="-s -f make/main.mk -j$CPU_COUNT_MULTIPLIER DEBUG=$DEBUG"
UTILITY="utility $FLAGS"
PREPARE="prepare $FLAGS"
BUILD="build $FLAGS"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  make $PREPARE && make $BUILD
elif [[ "$OSTYPE" == "msys" ]]; then
  COMMAND="make $UTILITY && make $PREPARE && make $BUILD"
  if [ "$1" == "-wezterm" ]; then
    wezterm cli spawn --cwd $CWD pwsh -NoExit -Command $COMMAND
  else
    pwsh -Command $COMMAND
  fi
fi
