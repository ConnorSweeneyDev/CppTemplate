#!/bin/bash

FLAGS="-s -f make/main.mk"

CLEAN="clean $FLAGS"

if [ "$OS" == "Windows_NT" ]; then
  mingw32-make $CLEAN
elif [ "$(uname)" == "Linux" ]; then
  mingw32-make $CLEAN
else
  echo "Unsupported OS"
fi
