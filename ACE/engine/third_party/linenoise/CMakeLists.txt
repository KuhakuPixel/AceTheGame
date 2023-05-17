cmake_minimum_required(VERSION 3.12)

set(lib_linenoise_src linenoise.c)

add_library(linenoise SHARED ${lib_linenoise_src})

# 
add_library(linenoise-static STATIC ${lib_linenoise_src})
# add fPIC so this this static library can be linked to a shared library
# https://stackoverflow.com/questions/11429055/cmake-how-create-a-single-shared-library-from-all-static-libraries-of-subprojec
target_compile_options(linenoise-static PRIVATE -fPIC)
