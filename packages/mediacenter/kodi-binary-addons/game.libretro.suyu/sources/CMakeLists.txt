cmake_minimum_required(VERSION 3.5)
project(game.libretro.suyu)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

find_package(Kodi REQUIRED)

find_library(SUYU_LIB NAMES suyu_libretro${CMAKE_SHARED_LIBRARY_SUFFIX} PATH_SUFFIXES libretro)

set(SUYU_CUSTOM_BINARY ${SUYU_LIB}
    ${PROJECT_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

build_addon(${PROJECT_NAME} SUYU "")

include(CPack)
