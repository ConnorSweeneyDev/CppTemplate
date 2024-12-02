#!/bin/bash

CWD=$(pwd)

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  ./binary/linux/CppTemplate.out
elif [[ "$OSTYPE" == "msys" ]]; then
  COMMAND="./binary/windows/CppTemplate.exe"
  if [ "$1" == "-wezterm" ]; then
    wezterm cli spawn --cwd $CWD pwsh -NoExit -Command $COMMAND
  else
    pwsh -Command $COMMAND
  fi
fi
