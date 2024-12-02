#!/bin/bash

FLAGS="-f make/main.mk"
CLEAN="clean $FLAGS"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  make $CLEAN
elif [[ "$OSTYPE" == "msys" ]]; then
  make $CLEAN
fi
