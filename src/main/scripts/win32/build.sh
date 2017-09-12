cmake ../../c++ -DCMAKE_BUILD_TYPE=Release -DCMAKE_COLOR_MAKEFILE=on -DCMAKE_INSTALL_PREFIX="../../../../target/classes/win32" -DOGG_INCLUDE_DIRS="ogg/win32/include" -DOGG_LIBRARIES="ogg/win32/lib" -DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

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
