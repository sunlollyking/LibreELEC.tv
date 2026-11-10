cmake_minimum_required(VERSION 3.5)
project(game.libretro.azahar)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

find_package(Kodi REQUIRED)

find_library(AZAHAR_LIB NAMES azahar_libretro${CMAKE_SHARED_LIBRARY_SUFFIX} PATH_SUFFIXES libretro)

set(AZAHAR_CUSTOM_BINARY ${AZAHAR_LIB}
    ${PROJECT_NAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

build_addon(${PROJECT_NAME} AZAHAR "")

include(CPack)
