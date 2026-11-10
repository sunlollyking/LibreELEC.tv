cmake_minimum_required(VERSION 3.5)
project(game.libretro.cemu)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

find_package(Kodi REQUIRED)

find_library(CEMU_LIB NAMES cemu_libretro${CMAKE_SHARED_LIBRARY_SUFFIX} PATH_SUFFIXES libretro)

set(CEMU_CUSTOM_BINARY ${CEMU_LIB}
    ${PROJECT_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

build_addon(${PROJECT_NAME} CEMU "")

include(CPack)
