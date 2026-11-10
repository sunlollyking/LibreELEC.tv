cmake_minimum_required(VERSION 3.5)
project(game.libretro.rpcs3)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

find_package(Kodi REQUIRED)

find_library(RPCS3_LIB NAMES rpcs3_libretro${CMAKE_SHARED_LIBRARY_SUFFIX} PATH_SUFFIXES libretro)

set(RPCS3_CUSTOM_BINARY ${RPCS3_LIB}
    ${PROJECT_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

build_addon(${PROJECT_NAME} RPCS3 "")

include(CPack)
