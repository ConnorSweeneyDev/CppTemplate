#!/bin/bash

if [ "$OS" == "Windows_NT" ]; then
  ./binary/windows/CppTemplate.exe
elif [ "$(uname)" == "Linux" ]; then
  ./binary/linux/CppTemplate.out
fi
