cmake_minimum_required (VERSION 3.7)

set(APP_NAME "awtktemplate")                      # <== Set To your app's name
set(DEVELOPMENT_PROJECT_NAME "awtk")          # <== Set to your project name, e.g. project.xcodeproj
set(DEVELOPMENT_TEAM_ID "AAAAAAAAAA")         # <== Set to your team ID from Apple
set(CODE_SIGN_IDENTITY "iPhone Developer")      # <== Set to your preferred code sign identity, to see list:
set(APP_BUNDLE_IDENTIFIER "org.zlgopen.awtktemplate")  # <== Set to your app's bundle identifier
                                                # /usr/bin/env xcrun security find-identity -v -p codesigning
set(DEPLOYMENT_TARGET 12.0)                      # <== Set your deployment target version of iOS
set(DEVICE_FAMILY "1")                          # <== Set to "1" to target iPhone, set to "2" to target iPad, set to "1,2" to target both
set(LOGIC_ONLY_TESTS 1)                         # <== Set to 1 if you do not want tests to be hosted by the application, speeds up pure logic tests but you can not run them on real devices

project(${DEVELOPMENT_PROJECT_NAME})

include(BundleUtilities)

set(PRODUCT_NAME ${APP_NAME})
set(EXECUTABLE_NAME ${APP_NAME})
set(MACOSX_BUNDLE_EXECUTABLE_NAME ${APP_NAME})
set(MACOSX_BUNDLE_INFO_STRING ${APP_BUNDLE_IDENTIFIER})
set(MACOSX_BUNDLE_GUI_IDENTIFIER ${APP_BUNDLE_IDENTIFIER})
set(MACOSX_BUNDLE_BUNDLE_NAME ${APP_BUNDLE_IDENTIFIER})
set(MACOSX_BUNDLE_ICON_FILE "")
set(MACOSX_BUNDLE_LONG_VERSION_STRING "1.0")
set(MACOSX_BUNDLE_SHORT_VERSION_STRING "1.0")
set(MACOSX_BUNDLE_BUNDLE_VERSION "1.0")
set(MACOSX_BUNDLE_COPYRIGHT "Copyright YOU")
set(MACOSX_DEPLOYMENT_TARGET ${DEPLOYMENT_TARGET})

set(APP_HEADER_FILES
  ./Prefix.pch
)

include(awtk_assets.mk)
include(awtk_source.mk)

add_executable(
    ${APP_NAME}
    MACOSX_BUNDLE
    ${APP_HEADER_FILES}
    ${AWTK_ALL_SOURCE} 
    ${RESOURCES}
)
target_link_libraries(${APP_NAME} "-liconv -lpthread -lm")

include(awtk_properties.mk)
include(awtk_frameworks.mk)

# To disable bitcode:
# set_target_properties(${APP_NAME} PROPERTIES XCODE_ATTRIBUTE_ENABLE_BITCODE "NO")

set(AWTK_IOS_FLAGS " -DIOS -DMACOS -Os -g ${AWTK_VGCANVAS_NANOVG_PLUS_GLES2_FLAGS}")
set(AWTK_IOS_FLAGS "${AWTK_IOS_FLAGS} -DASSETS_ZIP=\\\"./assets.zip\\\" -DWITH_ASSET_LOADER_ZIP=1 ") 
set(SDL_FLAGS "-DSDL2 -DWITH_SDL -DSDL_VIDEO_OPENGL_EGL -DSDL_VIDEO_OPENGL_ES2  -DSDL_TIMER_UNIX  -DGL_GLEXT_PROTOTYPES ")
set(AWTK_FLAGS "${AWTK_COMMON_FLAGS} ${AWTK_IOS_FLAGS} ${SDL_FLAGS}")
set(CMAKE_C_FLAGS "${AWTK_FLAGS} EXTRA_CFLAGS")
set(CMAKE_CXX_FLAGS "--std=c++17 -fobjc-arc ${AWTK_FLAGS} EXTRA_CPPFLAGS")
set(CMAKE_C_LINK_FLAGS "${CMAKE_C_LINK_FLAGS} EXTRA_LINK_FLAGS")
set(CMAKE_CXX_LINK_FLAGS "${CMAKE_CXX_LINK_FLAGS} EXTRA_LINK_FLAGS")


# Create the app target
set_target_properties(${APP_NAME} PROPERTIES
                      XCODE_ATTRIBUTE_DEBUG_INFORMATION_FORMAT "dwarf-with-dsym"
                      XCODE_ATTRIBUTE_GCC_PREFIX_HEADER "${CMAKE_CURRENT_SOURCE_DIR}/Prefix.pch"
                      RESOURCE "${RESOURCES}"
                      XCODE_ATTRIBUTE_GCC_PRECOMPILE_PREFIX_HEADER "YES"
                      XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET ${DEPLOYMENT_TARGET}
                      XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY ${CODE_SIGN_IDENTITY}
                      XCODE_ATTRIBUTE_DEVELOPMENT_TEAM ${DEVELOPMENT_TEAM_ID}
                      XCODE_ATTRIBUTE_TARGETED_DEVICE_FAMILY ${DEVICE_FAMILY}
                      MACOSX_BUNDLE_INFO_PLIST ${CMAKE_CURRENT_SOURCE_DIR}/plist.in
                      XCODE_ATTRIBUTE_CLANG_ENABLE_OBJC_ARC YES
                      XCODE_ATTRIBUTE_COMBINE_HIDPI_IMAGES NO
                      XCODE_ATTRIBUTE_INSTALL_PATH "$(LOCAL_APPS_DIR)"
                      XCODE_ATTRIBUTE_ENABLE_TESTABILITY YES
                      XCODE_ATTRIBUTE_GCC_SYMBOLS_PRIVATE_EXTERN YES
)

