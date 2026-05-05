#ifndef RAYLIB_H_
#define RAYLIB_H_ 

#if defined(__linux__)
#include "../thirdparty/raylib-5.5_linux_amd64/include/raylib.h"
#elif defined(__APPLE__)
#include "../thirdparty/raylib-5.5_macos/include/raylib.h"
#elif defined(_WIN32)
#include "../thirdparty/raylib-5.5_win64_mingw-w64/include/raylib.h"
#else
#error "Unsupported platform"
#endif // PLATFORM

#endif // RAYLIB_H_
