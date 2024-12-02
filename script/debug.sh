#!/bin/bash

if [[ "$OS" == "Windows_NT" ]]; then
  gdb -tui ./binary/windows/CppTemplate.exe
else
  gdb -tui ./binary/linux/CppTemplate.out
fi
