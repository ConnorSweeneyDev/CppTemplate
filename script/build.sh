#!/bin/bash

PROCESSOR_COUNT=$(nproc)
DEBUG=1
FLAGS="-s -f make/main.mk -j$PROCESSOR_COUNT DEBUG=$DEBUG"

UTILITY="utility $FLAGS"
PREPARE="prepare $FLAGS"
BUILD="build $FLAGS"

if [ "$OS" == "Windows_NT" ]; then
  mingw32-make $UTILITY && mingw32-make $PREPARE && mingw32-make $BUILD
elif [ "$(uname)" == "Linux" ]; then
  mingw32-make $PREPARE && mingw32-make $BUILD
else
  echo "Unsupported OS"
fi
