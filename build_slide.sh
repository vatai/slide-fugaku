#!/usr/bin/bash

pushd HashingDeepLearning
rm -rf bin
mkdir bin
pushd bin
export CC="fcc -Nclang"
export CXX="FCC -Nclang"
cmake ..
cmake --build . -j
./runme ../SLIDE/Config_amz.csv
popd
popd
