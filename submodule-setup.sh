#!/bin/bash

git submodule init
git submodule update --recursive

SETUP_ROOT=$(pwd)

cd esp8266
git checkout tags/2.5.2
git submodule update --init
cd tools
python get.py

cd ${SETUP_ROOT}
