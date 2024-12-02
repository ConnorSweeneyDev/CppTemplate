#!/bin/bash

CWD=$(pwd)

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  COMMAND="gdb -tui ./binary/linux/CppTemplate.out"
elif [[ "$OSTYPE" == "msys" ]]; then
  COMMAND="gdb -tui ./binary/windows/CppTemplate.exe"
fi
if [ "$1" == "-wezterm" ]; then
  wezterm cli spawn --cwd $CWD pwsh -Command $COMMAND
else
  pwsh -Command $COMMAND
fi
