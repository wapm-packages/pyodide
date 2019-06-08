#!/usr/bin/env sh

PYODIDE_ROOT=pyodide-0.12.0

(
  cd ${PYODIDE_ROOT} && \
  ./run_docker || exit $?
) || exit $?

mkdir -p bin || exit $?
cp ${PYODIDE_ROOT}/build/python3.7.wasm bin || exit $?
chmod +x bin/python3.7.wasm || exit $?

rm -rf lib || exit $?
cp -R ${PYODIDE_ROOT}/cpython/installs/python-3.7.0/lib . || exit $?
