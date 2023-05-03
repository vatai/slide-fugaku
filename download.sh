#!/usr/bin/bash

[ -e HashingDeepLearning ] || git clone git@github.com:keroro824/HashingDeepLearning.git
mkdir HashingDeepLearning/dataset

([ -f Amazon670K.bow.zip ] || wget https://github.com/ficstamas/slide-fugaku/releases/download/files/Amazon670K.bow.zip) && unzip Amazon670K.bow.zip -d HashingDeepLearning/dataset/

cat <<EOF > HashingDeepLearning/SLIDE/Config_amz.csv
RangePow = 6,18
K = 2,6
L = 20,50
Sparsity = 1,0.005,1,1

Batchsize=128
Rehash=6400
Rebuild=128000
InputDim=135909
totRecords=490449
totRecordsTest=153025

Lr=0.0001
Epoch=10
Stepsize=1000

sizesOfLayers=128,670091
numLayer=2

trainData=../dataset/Amazon670K.bow/train.txt
testData=../dataset/Amazon670K.bow/test.txt

weight=../savedWeight.npz
savedweight=../savedWeight.npz

logFile=../dataset/log.txt
EOF
