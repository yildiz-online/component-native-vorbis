cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
-DOGG_INCLUDE_DIRS="ogg/linux64/include" \
-DOGG_LIBRARIES="ogg/linux64/lib" \
-G "Unix Makefiles"

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
