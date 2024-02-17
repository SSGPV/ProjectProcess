#!/bin/bash
# Stop on error
set -e

# Create a build directory
mkdir -p build && cd build

# Configure the project with CMake
cmake ..

# Build the project
make

# Optionally, run tests or install the project
# make test
# sudo make install

echo "Build completed successfully."
