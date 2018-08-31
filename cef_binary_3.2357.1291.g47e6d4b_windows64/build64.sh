mkdir -p build
cd build

cmake -G "Visual Studio 15 2017 Win64" -T v140_xp ../
cmake --build . --target libcef_dll_wrapper --config debug
cmake --build . --target libcef_dll_wrapper --config release

cd ..