#!/bin/bash

PWD=`pwd`

export PORT_DEVICE=${PWD}
mkdir -p rom

rm -r out/framework
rm -r new-update
cd ..
. build/envsetup.sh
cd -
make fullota
