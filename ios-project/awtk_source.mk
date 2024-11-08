
set(SDL2_SOURCE_DIR "awtk/3rd/SDL")
set(AWTK_PORT_SOURCE_DIR "awtk-port")

include(awtk_common.mk)

file(GLOB AWTK_SDL_SOURCE_FILES
	${SDL2_SOURCE_DIR}/src/video/uikit/*.m
	${SDL2_SOURCE_DIR}/src/sensor/coremotion/*.m
	${SDL2_SOURCE_DIR}/src/hidapi/ios/*.m
	${SDL2_SOURCE_DIR}/src/audio/coreaudio/*.m
	${SDL2_SOURCE_DIR}/src/power/uikit/*.m
	${SDL2_SOURCE_DIR}/src/filesystem/cocoa/*.m
	${SDL2_SOURCE_DIR}/src/joystick/iphoneos/*.m
	${SDL2_SOURCE_DIR}/src/file/cocoa/*.m
	${SDL2_SOURCE_DIR}/src/render/*/*.m
  ${AWTK_COMMON_SOURCE_FILES}
  ${AWTK_VGCANVAS_NANOVG_PLUS_SOURCE_FILES}
  ${AWTK_SDL_COMMON_SOURCE_FILES}
)

file(GLOB AWTK_PORT_SOURCE_FILES
	${AWTK_PORT_SOURCE_DIR}/*.m
)

include_directories(${SDL2_SOURCE_DIR}/include
	${SDL2_SOURCE_DIR}/src/video/khronos
	${AWTK_COMMON_INCLUDES}
	${AWTK_NANOVG_PLUS_INCLUDES}
  ${AWTK_PORT_SOURCE_DIR}
  EXTRA_INCLUDES
)

set(AWTK_ALL_SOURCE ${AWTK_SDL_SOURCE_FILES} ${AWTK_PORT_SOURCE_FILES} ${AWTK_APP_SOURCE_FILES})

