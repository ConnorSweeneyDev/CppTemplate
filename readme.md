# Building and Executing
This project is optimized to be built with the following targets in mind:
- Windows 11 MinGW 64-bit GCC 14.2.0
- Ubuntu 18.04 GLIBC Version 2.27

Version information for dependencies can be found in `external/version_info.txt`.

On Windows, the binary will be statically linked to any C++ runtime libraries that are used, but
dynamically linked to third party libraries. On Linux, the binary will be statically linked where
possible (libgcc and libstdc++) but dynamically linked to everything else. When ready to release,
all libraries will be dynamically linked on both platforms and the necessary files will be included.

After following the platform specific instructions below you can execute the `build.bat` file on
Windows or the `build.sh` file on Linux from the root of the project to build the binary. The
outputted binary must be run from the root to work as intended.

### Windows
You must have a 64-bit [MinGW](https://winlibs.com/) installation with clang/LLVM support in your
path, this will give you access to the unix tools that are used in the makefile. In addition, you
will need Python3 for parallel build support - `winget install --id Python.Python.3.10`, and the
batch files assume you have pwsh.exe installed - `winget install --id Microsoft.Powershell --source
winget`.

### Linux
Do the following on Ubuntu to ensure your environment is set up correctly:
- Only run `sudo apt update && sudo apt upgrade` if you haven't already.
- Run `sudo apt install git g++ gdb make`.
