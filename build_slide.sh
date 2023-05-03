#!/usr/bin/bash

pushd HashingDeepLearning
rm -rf bin
mkdir bin
pushd bin
export CC="fcc -Nclang -Kfast,openmp"
export CXX="FCC -Nclang -Kfast,openmp"
cmake ..
cmake --build . -j
./runme ../SLIDE/Config_amz.csv
popd
popd
