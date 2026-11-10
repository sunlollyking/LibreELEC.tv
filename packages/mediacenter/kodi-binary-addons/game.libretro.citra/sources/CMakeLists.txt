cmake_minimum_required(VERSION 3.5)
project(game.libretro.citra)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

find_package(Kodi REQUIRED)

find_library(CITRA_LIB NAMES citra_libretro${CMAKE_SHARED_LIBRARY_SUFFIX} PATH_SUFFIXES libretro)

set(CITRA_CUSTOM_BINARY ${CITRA_LIB}
    ${PROJECT_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

build_addon(${PROJECT_NAME} CITRA "")

include(CPack)
