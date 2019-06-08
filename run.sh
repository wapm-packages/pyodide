#!/usr/bin/env sh

export PYTHONHOME=`pwd`
export PYTHONPATH=$PYTHONHOME

../wasmer/target/release/wasmer run -- bin/python3.7.wasm
