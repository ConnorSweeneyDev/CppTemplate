#!/bin/bash

DEBUG=1
CWD=$(pwd)
CPU_COUNT_MULTIPLIER=$(nproc)
FLAGS="-s -f make/main.mk -j$CPU_COUNT_MULTIPLIER DEBUG=$DEBUG"
UTILITY="utility $FLAGS"
PREPARE="prepare $FLAGS"
BUILD="build $FLAGS"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  make $PREPARE && make $BUILD
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
  make $UTILITY && make $PREPARE && make $BUILD
fi
