touch CMakeLists.txt
echo "cmake_minimum_required(VERSION 2.8)" > CMakeLists.txt
echo "project(main C CXX)" >> CMakeLists.txt

echo "add_executable(main main.cpp)
echo "set(CMAKE CXX_FLAGS "-Wall -Werror -std=c+11")"

