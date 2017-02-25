#
if [[ $# -eq 0 ]] ;
    then
       bash cpp_compile.sh main.cpp
    else
       bash cpp_compile.sh "$1"
fi
