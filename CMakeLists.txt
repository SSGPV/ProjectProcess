cmake_minimum_required(VERSION 3.10)
project(ProgrammingProcess VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Include directory for our header files
include_directories(include)

# Add library
add_library(mylibrary STATIC src/mylibrary.cpp)

# Add executable
add_executable(myexecutable src/main.cpp)
target_link_libraries(myexecutable mylibrary)
