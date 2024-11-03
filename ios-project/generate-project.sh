rm -rf Xcode

cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=./ios.cmake -DIOS_PLATFORM=OS -H. -BXcode -GXcode
