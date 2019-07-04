#!/usr/bin/env sh

PYODIDE_ROOT=pyodide-0.12.0

# Compile python
(
  cd ${PYODIDE_ROOT} && \
  ./run_docker || exit $?
) || exit $?

# Move compiled python binaries to `bin` folder
mkdir -p bin || exit $?
cp ${PYODIDE_ROOT}/build/python3.7.* bin || exit $?

# Set executable bit on WebAssembly python binary
chmod +x bin/python3.7.wasm

# Update python standard library
rm -rf lib || exit $?
cp -R ${PYODIDE_ROOT}/cpython/installs/python-3.7.0/lib . || exit $?
