#!/usr/bin/bash

pushd HashingDeepLearning
mkdir bin
pushd bin
cmake ..
make -j CC=fcc CXX=FCC
./runme ../SLIDE/Config_amz.csv
popd
popd
