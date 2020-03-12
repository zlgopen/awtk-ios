rm -rf Xcode
../../../awtk/scripts/create_assets_zip.sh assets

cmake -DCMAKE_TOOLCHAIN_FILE=./ios.cmake -DIOS_PLATFORM=OS -H. -BXcode -GXcode
