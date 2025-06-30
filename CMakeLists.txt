cmake_minimum_required(VERSION 3.5)

project( bround VERSION 0.1 LANGUAGES C CXX )
set(PROJECT_DESCRIPTION "bround to  ProjectX C++ checksum tool")

include(GNUInstallDirs)

include(CheckIncludeFileCXX)
if( NOT CMAKE_BUILD_TYPE )
        set( CMAKE_BUILD_TYPE Release CACHE STRING "Choose the type of build." FORCE )
endif()

set( CMAKE_C_STANDARD 99 )
set( CMAKE_CXX_STANDARD 11 )

if( NOT CMAKE_BUILD_TYPE STREQUAL Debug )
add_compile_options(-O3)
else()
add_compile_options(-O0 -g)
endif()

add_compile_options(-march=native)
add_compile_options(-D_FILE_OFFSET_BITS=64)
add_compile_options(-fdata-sections)
add_compile_options(-fpermissive)
add_compile_options(-ffunction-sections)
add_compile_options(-Wall)
add_compile_options(-Wextra)
add_compile_options(-Wpedantic)
add_compile_options(-Wno-unused)
add_compile_options(-Wno-unused-result)
add_compile_options(-Wno-format-contains-nul)
add_link_options(-Wl,--gc-sections)
add_link_options(-Wl,--print-gc-sections)
add_link_options(-Wl,-s)

add_executable( rgb2vga rgb2vga.c)
target_include_directories( rgb2vga INTERFACE
	PUBLIC_HEADER $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)
target_link_libraries( rgb2vga INTERFACE m )

install(FILES bround.h DESTINATION ${CMAKE_INSTALL_INCLUDEDIR} COMPONENT PUBLIC_HEADER)
