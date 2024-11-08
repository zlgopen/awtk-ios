rm -rf Xcode

cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=./ios.cmake -DIOS_PLATFORM=OS -H. -BXcode -GXcode

echo "===================================================="
echo "Xcode project is crated at: Xcode/awtk.xcodeproj"
echo "run the following command to open it:"
echo "----------------------------------------------------"
echo "open Xcode/awtk.xcodeproj"
echo "===================================================="
