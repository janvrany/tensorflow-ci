pushd . && call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64 && popd

mkdir tensorflow\tensorflow\contrib\cmake\build_windows_x86_64
pushd tensorflow\tensorflow\contrib\cmake\build_windows_x86_64

cmake .. -A x64 -DCMAKE_BUILD_TYPE=RelWithDebInfo -Dtensorflow_BUILD_PYTHON_BINDINGS=OFF

rem The /maxcpucount:1 is there to allow building on really slow machines
rem with as little memory as 4GB !?!
MSBuild /p:Configuration=RelWithDebInfo tf_sharedlib.vcxproj 

popd
