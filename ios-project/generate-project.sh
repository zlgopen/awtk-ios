rm -rf Xcode
rm -f assets.zip
zip -r assets.zip assets
cmake -DCMAKE_TOOLCHAIN_FILE=./ios.cmake -DIOS_PLATFORM=OS -H. -BXcode -GXcode
