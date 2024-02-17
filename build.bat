@echo off
SETLOCAL EnableExtensions

:: Create a build directory
if not exist build mkdir build
cd build

:: Configure the project with CMake
cmake ..

:: Build the project
cmake --build . --config Release

:: Optionally, run tests or install the project
:: cmake --build . --config Release --target test
:: cmake --build . --config Release --target install

echo Build completed successfully.
ENDLOCAL
