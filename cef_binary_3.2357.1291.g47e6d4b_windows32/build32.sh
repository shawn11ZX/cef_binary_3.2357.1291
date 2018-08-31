set -e
mkdir -p build
cd build

cmake -G "Visual Studio 15 2017" -T v140_xp ../ 

cmake --build . --target libcef_dll_wrapper --config release
cmake --build . --target libcef_dll_wrapper --config debug


cd ..