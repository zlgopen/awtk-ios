#ifndef AWTK_CONFIG_H
#define AWTK_CONFIG_H

#ifndef IOS
#define IOS 1
#endif/*IOS*/

#ifndef HAS_SEM_OPEN
#define HAS_SEM_OPEN
#endif/*HAS_SEM_OPEN*/

#ifndef APPLE
#define APPLE 1 
#endif/*APPLE*/

#ifndef ASSETS_ZIP
#define ASSETS_ZIP "./assets.zip"
#endif /*ASSETS_ZIP*/

#ifndef WITH_ASSET_LOADER_ZIP
#define WITH_ASSET_LOADER_ZIP 1 
#endif/*WITH_ASSET_LOADER_ZIP*/

#ifndef MOBILE_APP
#define MOBILE_APP 1 
#endif/*MOBILE_APP*/

#ifndef WITH_STB_FONT
#define WITH_STB_FONT 1 
#endif/*WITH_STB_FONT*/

#ifndef STBTT_STATIC
#define STBTT_STATIC 1 
#endif/*STBTT_STATIC*/

#ifndef STB_IMAGE_STATIC
#define STB_IMAGE_STATIC 1 
#endif/*STB_IMAGE_STATIC*/

#ifndef WITH_STB_IMAGE
#define WITH_STB_IMAGE 1 
#endif/*WITH_STB_IMAGE*/

#ifndef WITH_VGCANVAS
#define WITH_VGCANVAS 1 
#endif/*WITH_VGCANVAS*/

#ifndef WITH_UNICODE_BREAK
#define WITH_UNICODE_BREAK 1 
#endif/*WITH_UNICODE_BREAK*/

#ifndef WITH_DESKTOP_STYLE
#define WITH_DESKTOP_STYLE 1 
#endif/*WITH_DESKTOP_STYLE*/

#ifndef SDL2
#define SDL2 1 
#endif/*SDL2*/

#ifndef HAS_STD_MALLOC
#define HAS_STD_MALLOC 1 
#endif/*HAS_STD_MALLOC*/

#ifndef WITH_SDL
#define WITH_SDL 1 
#endif/*WITH_SDL*/

#ifndef WITH_FS_RES
#define WITH_FS_RES 1 
#endif/*WITH_FS_RES*/

#ifndef HAS_STDIO
#define HAS_STDIO 1 
#endif/*HAS_STDIO*/

#ifndef WITH_NANOVG_GPU
#define WITH_NANOVG_GPU 1 
#endif/*WITH_NANOVG_GPU*/

#ifndef WITH_VGCANVAS_LCD
#define WITH_VGCANVAS_LCD 1 
#endif/*WITH_VGCANVAS_LCD*/

#ifndef WITH_NANOVG_GLES2
#define WITH_NANOVG_GLES2 1 
#endif/*WITH_NANOVG_GLES2*/

#ifndef WITH_GPU_GLES2
#define WITH_GPU_GLES2 1 
#endif/*WITH_GPU_GLES2*/

#ifndef WITH_NANOVG_GL
#define WITH_NANOVG_GL 1 
#endif/*WITH_NANOVG_GL*/

#ifndef SDL_VIDEO_OPENGL_EGL
#define SDL_VIDEO_OPENGL_EGL 1 
#endif/*SDL_VIDEO_OPENGL_EGL*/

#ifndef SDL_VIDEO_OPENGL_ES2
#define SDL_VIDEO_OPENGL_ES2 1 
#endif/*SDL_VIDEO_OPENGL_ES2*/

#ifndef SDL_TIMER_UNIX
#define SDL_TIMER_UNIX 1 
#endif/*SDL_TIMER_UNIX*/

#ifndef HAS_PTHREAD
#define HAS_PTHREAD 1 
#endif/*HAS_PTHREAD*/

#ifndef HAS_GET_TIME_US64
#define HAS_GET_TIME_US64 1
#endif/*HAS_GET_TIME_US64*/

#define WITHOUT_GLAD

#endif/*AWTK_CONFIG_H*/
