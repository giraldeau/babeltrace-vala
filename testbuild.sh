#!/bin/bash

FOLDER=$(basename "$PWD")
ARCH=babeltrace-vala-1.0.0.tar.gz

pushd .
cd ..
tar cJf $ARCH $FOLDER
rpmbuild -ta $ARCH
popd
