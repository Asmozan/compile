## Compile version for c++
#Argumentation is important during discussions


#CMakeLists init & config
touch CMakeLists.txt
echo "cmake_minimum_required(VERSION 2.8)" > CMakeLists.txt
echo "project(main CXX)" >> CMakeLists.txt

echo "add_executable(main "$1")" >> CMakeLists.txt
echo "set(CMAKE CXX_FLAGS "-Wall -Werror -std=c+11")" >> CMakeLists.txt

#compile files
rm -r out
mkdir out
cd out
cmake ..

#make compile great again
make help
make 2> error.log
echo "Errors during compilation:"
if ! [[ -s error.log ]] ; 
    then
        echo "# No errors detected"
    else
        cat error.log | grep "error"
fi

#result show
echo "Result of program:"
./main
