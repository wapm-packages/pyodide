# Python

Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python's design philosophy emphasizes code readability with its notable use of significant whitespace.

This repo is based on [Pyodide bringing Python to the browser via WebAssembly](https://github.com/iodide-project/pyodide).

You can install python with:

```shell
wapm install python
```

## Running

You can run the `python` shell:

```bash
$ wapm run python
Python 3.7.0 (default, Jun 12 2019, 21:15:06)
[Clang 6.0.1 ] on emscripten
Type "help", "copyright", "credits" or "license" for more information.
>>> this_is = "wapm"
>>> print(f"Hello from {this_is}")
Hello from wapm
>>>
```


## Building from Source

You will need Emscripten SDK (emsdk) to build `bin/python3.7.wasm` file.

Steps:

1. Setup emsdk (>= 1.38.11), see [Installation Instructions](https://github.com/juj/emsdk#installation-instructions)
2. Run `bash build.sh`
