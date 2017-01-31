# TensorFlow CI Scripts

This repository contains couple scripts to build [TensorFlow][1] shared library.
This library can be then used to create (dynamic) language bindings (such 
as Cuis Smalltalk bindings). Or at least, this is the intention. 

## Prerequisites

### Windows

To build on Windows, you need 

 * [CMake][2] - `cmake` command must be in `PATH`
 * Visual Studio with MSVC toolchain 
 * [Git][3] - `git` command must be in `PATH`

*Note*: Yes, you need full Visual Studio since CMake files does not work
well when only standalone MSVC C++ toolchain is installed (you would get
various errors and mis-matching architectures / generators here and there)
Sigh! 

## Building

Just run a script for your platform: 

 * `build_windows_x86_64.bat` for 64bit Windows (CPU only)

## License

BSD, see `LICENSE.txt`

 [1]: https://www.tensorflow.org/
 [2]: https://cmake.org/download/
 [3]: https://git-scm.com/download/win