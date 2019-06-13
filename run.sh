#!/usr/bin/env sh

export PYTHONHOME=`pwd`

../wasmer/target/release/wasmer run -- bin/python3.7.wasm
