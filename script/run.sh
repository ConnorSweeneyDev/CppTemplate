#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  ./binary/linux/CppTemplate.out
elif [[ "$OSTYPE" == "msys" ]]; then
  ./binary/windows/CppTemplate.exe
fi
