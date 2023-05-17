cmake_minimum_required(VERSION 3.12)

set(lib_linenoise_src linenoise.c)

add_library(linenoise SHARED ${lib_linenoise_src})
add_library(linenoise-static STATIC ${lib_linenoise_src})
