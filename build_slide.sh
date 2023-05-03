#!/usr/bin/bash

pushd HashingDeepLearning
rm -rf bin
mkdir bin
pushd bin
CC=fcc CXX=FCC cmake ..
cmake --build . -j
./runme ../SLIDE/Config_amz.csv
popd
popd
