
set(APP_SOURCE_DIR "src/app")
set(AWTK_SOURCE_DIR "src/awtk")
set(SDL2_SOURCE_DIR "src/awtk/3rd/SDL")
set(AWTK_PORT_SOURCE_DIR "src/awtk-port")

file(GLOB SDL_SOURCE_FILES
	${SDL2_SOURCE_DIR}/src/*.c
	${SDL2_SOURCE_DIR}/src/audio/*.c
	${SDL2_SOURCE_DIR}/src/audio/dummy/*.c
	${SDL2_SOURCE_DIR}/src/atomic/*.c
	${SDL2_SOURCE_DIR}/src/cpuinfo/*.c
	${SDL2_SOURCE_DIR}/src/dynapi/*.c
	${SDL2_SOURCE_DIR}/src/events/*.c
	${SDL2_SOURCE_DIR}/src/file/*.c
	${SDL2_SOURCE_DIR}/src/haptic/*.c
	${SDL2_SOURCE_DIR}/src/joystick/*.c
	${SDL2_SOURCE_DIR}/src/joystick/hidapi/*.c
	${SDL2_SOURCE_DIR}/src/loadso/dlopen/*.c
	${SDL2_SOURCE_DIR}/src/power/*.c
	${SDL2_SOURCE_DIR}/src/sensor/*.c
	${SDL2_SOURCE_DIR}/src/render/*.c
	${SDL2_SOURCE_DIR}/src/render/*/*.c
	${SDL2_SOURCE_DIR}/src/stdlib/*.c
	${SDL2_SOURCE_DIR}/src/thread/*.c
	${SDL2_SOURCE_DIR}/src/thread/pthread/*.c
	${SDL2_SOURCE_DIR}/src/timer/*.c
	${SDL2_SOURCE_DIR}/src/timer/unix/*.c
	${SDL2_SOURCE_DIR}/src/video/*.c
	${SDL2_SOURCE_DIR}/src/video/yuv2rgb/*.c
	${SDL2_SOURCE_DIR}/src/video/dummy/*.c
	${SDL2_SOURCE_DIR}/src/haptic/dummy/*.c
	${SDL2_SOURCE_DIR}/src/core/unix/*.c
	${SDL2_SOURCE_DIR}/src/video/uikit/*.m
	${SDL2_SOURCE_DIR}/src/sensor/coremotion/*.m
	${SDL2_SOURCE_DIR}/src/hidapi/ios/*.m
	${SDL2_SOURCE_DIR}/src/audio/coreaudio/*.m
	${SDL2_SOURCE_DIR}/src/power/uikit/*.m
	${SDL2_SOURCE_DIR}/src/filesystem/cocoa/*.m
	${SDL2_SOURCE_DIR}/src/joystick/iphoneos/*.m
	${SDL2_SOURCE_DIR}/src/file/cocoa/*.m
)

file(GLOB AWTK_SOURCE_FILES
	${AWTK_SOURCE_DIR}/3rd/libunibreak/*.c
	${AWTK_SOURCE_DIR}/3rd/nanovg/base/*.c
	${AWTK_SOURCE_DIR}/3rd/miniz/*.c
	${AWTK_SOURCE_DIR}/src/tkc/*.c
	${AWTK_SOURCE_DIR}/src/base/*.c
	${AWTK_SOURCE_DIR}/src/layouters/*.c
	${AWTK_SOURCE_DIR}/src/widgets/*.c
	${AWTK_SOURCE_DIR}/src/ui_loader/*.c
	${AWTK_SOURCE_DIR}/src/xml/*.c
	${AWTK_SOURCE_DIR}/src/svg/*.c
	${AWTK_SOURCE_DIR}/src/blend/*.c
	${AWTK_SOURCE_DIR}/src/clip_board/*.c
	${AWTK_SOURCE_DIR}/src/font_loader/*.c
    ${AWTK_SOURCE_DIR}/src/graphic_buffer/*.c
	${AWTK_SOURCE_DIR}/src/ext_widgets/*.c
	${AWTK_SOURCE_DIR}/src/ext_widgets/*/*.c
	${AWTK_SOURCE_DIR}/src/image_loader/*.c
	${AWTK_SOURCE_DIR}/src/widget_animators/*.c
	${AWTK_SOURCE_DIR}/src/window_animators/*.c
	${AWTK_SOURCE_DIR}/src/window_manager/window_manager_default.c
	${AWTK_SOURCE_DIR}/src/native_window/native_window_sdl.c
	${AWTK_SOURCE_DIR}/src/dialog_highlighters/*.c
	${AWTK_SOURCE_DIR}/src/*.c
	${AWTK_SOURCE_DIR}/src/ubjson/*.c
	${AWTK_SOURCE_DIR}/src/streams/buffered/*.c
	${AWTK_SOURCE_DIR}/src/streams/mem/*.c
	${AWTK_SOURCE_DIR}/src/streams/file/*.c
	${AWTK_SOURCE_DIR}/src/streams/inet/*.c
	${AWTK_SOURCE_DIR}/src/input_methods/*.c
	${AWTK_SOURCE_DIR}/src/lcd/lcd_nanovg.c
	${AWTK_SOURCE_DIR}/src/main_loop/main_loop_simple.c
	${AWTK_SOURCE_DIR}/src/main_loop/main_loop_sdl.c
	${AWTK_SOURCE_DIR}/src/platforms/pc/*.c
	${AWTK_SOURCE_DIR}/src/vgcanvas/vgcanvas_nanovg_gl.c)

file(GLOB AWTK_PORT_SOURCE_FILES
	${AWTK_PORT_SOURCE_DIR}/*.m
)

include_directories(${SDL2_SOURCE_DIR}/include
	${SDL2_SOURCE_DIR}/src/video/khronos
  ${AWTK_SOURCE_DIR}/src
  ${AWTK_SOURCE_DIR}/3rd
  ${AWTK_SOURCE_DIR}/3rd/glad
  ${AWTK_SOURCE_DIR}/3rd/nanovg
  ${AWTK_SOURCE_DIR}/3rd/nanovg/gl
  ${AWTK_SOURCE_DIR}/3rd/nanovg/base
  ${AWTK_SOURCE_DIR}/3rd/libunibreak
  ${AWTK_SOURCE_DIR}/src/ext_widgets
  ${AWTK_PORT_SOURCE_DIR}/
  EXTRA_INCLUDES
)

file(GLOB_RECURSE APP_SOURCE_FILES  ${APP_SOURCE_DIR}/*.c
  ${APP_SOURCE_DIR}/*.cpp)

set(AWTK_ALL_SOURCE ${SDL_SOURCE_FILES} ${AWTK_SOURCE_FILES} ${AWTK_PORT_SOURCE_FILES} ${APP_SOURCE_FILES})

