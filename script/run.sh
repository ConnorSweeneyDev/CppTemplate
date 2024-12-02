#!/bin/bash

if [[ "$OS" == "Windows_NT" ]]; then
  ./binary/windows/CppTemplate.exe
else
  ./binary/linux/CppTemplate.out
fi
