#!/bin/bash

FLAGS="-f make/main.mk"
CLEAN="clean $FLAGS"

COMMAND="make $CLEAN"
pwsh -Command $COMMAND
