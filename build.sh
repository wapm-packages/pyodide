#!/usr/bin/env sh

cd pyodide-0.12.0

./run_docker || exit $?

cp build/python3.7.wasm .. || exit $?
