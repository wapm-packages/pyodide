#!/usr/bin/env sh

cd pyodide-0.12.0

./run_docker

cp pyodide-0.12.0/build/pyodide.asm.wasm ..
