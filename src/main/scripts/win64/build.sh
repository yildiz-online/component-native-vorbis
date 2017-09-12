cmake ../../c++ -DCMAKE_C_FLAGS="-w" -DCMAKE_BUILD_TYPE=Release -DCMAKE_COLOR_MAKEFILE=on -DCMAKE_INSTALL_PREFIX="../../../../target/classes/win64" -DOGG_INCLUDE_DIRS="ogg/win64/include" -DOGG_LIBRARIES="ogg/win64/lib" -DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make install
r1=$?
make clean

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -R lib
rm vorbis.pc
rm vorbisenc.pc
rm vorbisfile.pc
rm -R ogg

return $r1
