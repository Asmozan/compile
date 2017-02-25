#CMakeLists init & config
touch CMakeLists.txt
echo "cmake_minimum_required(VERSION 2.8)" > CMakeLists.txt
echo "project(main C CXX)" >> CMakeLists.txt

echo "add_executable(main main.cpp)" >> CMakeLists.txt
echo "set(CMAKE CXX_FLAGS "-Wall -Werror -std=c+11")" >> CMakeLists.txt

#compile files
rm -r out
mkdir out
cd out
cmake ..

#make compile great again
make help
make 2> error.log
cat error.log | grep "error"

#result show
cd ..
bash resultlog.sh
