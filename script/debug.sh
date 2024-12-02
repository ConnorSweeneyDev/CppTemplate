#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  gdb -tui ./binary/linux/CppTemplate.out
elif [[ "$OSTYPE" == "msys" ]]; then
  gdb -tui ./binary/windows/CppTemplate.exe
fi
