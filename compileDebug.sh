## Compile version for c++
#Argumentation is important during discussions
#CMakeLists init & config
touch CMakeLists.txt
echo "cmake_minimum_required(VERSION 2.8)" > CMakeLists.txt
echo "project("${1//.cpp}" CXX)" >> CMakeLists.txt

echo "add_executable("${1//.cpp}" "$1")" >> CMakeLists.txt
echo "set(CMAKE CXX_FLAGS "-Wall -Werror -std=c+11 -g")" >> CMakeLists.txt

#compile files
rm -r out
mkdir out
cd out
cmake .. -DCMAKE_BUILD_TYPE=Debug  2> error.log

#make compile great again
make help
make 2>> error.log
echo "Errors during compilation:"
if ! [[ -s error.log ]] ; 
    then
        echo "# No errors detected"
    else
       cat error.log | grep "Cannot find" && echo "$1" && echo "Check if argument name is correct"  
       cat error.log | grep "error"
fi

#result show
echo "Result of program:"
./"${1//.cpp}"
