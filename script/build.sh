#!/bin/bash

PROCESSOR_COUNT=$(nproc)
DEBUG=1
FLAGS="-s -f make/main.mk -j$PROCESSOR_COUNT DEBUG=$DEBUG"

UTILITY="utility $FLAGS"
PREPARE="prepare $FLAGS"
BUILD="build $FLAGS"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  make $PREPARE && make $BUILD
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
  make $UTILITY && make $PREPARE && make $BUILD
fi
