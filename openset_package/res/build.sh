#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'build <Release/Debug> <branch name or master>'
    exit 1
fi

if [ -d /opt/openset/openset ]; then
  rm -rf /opt/openset/openset
fi

if [[ $1 = "release" ]]; then
    set -- "Release" "$2"
fi

if [[ $1 = "debug" ]]; then
    set -- "Debug" "$2"
fi

cd /opt/openset
git clone --recursive https://github.com/opset/openset.git

echo "Switching branch to: $2"
cd /opt/openset/openset
git checkout $2

mkdir cmake-build
cd cmake-build
cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7 -DCMAKE_BUILD_TYPE=$1
make
ctest -R openset-unit-test

