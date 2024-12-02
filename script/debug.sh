#!/bin/bash

if [ "$OS" == "Windows_NT" ]; then
  gdb -tui ./binary/windows/CppTemplate.exe
elif [ "$(uname)" == "Linux" ]; then
  gdb -tui ./binary/linux/CppTemplate.out
fi
