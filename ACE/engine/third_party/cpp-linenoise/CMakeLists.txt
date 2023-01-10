project(linenoise)

cmake_minimum_required(VERSION 3.0)

add_library(linenoise INTERFACE)
target_include_directories(linenoise INTERFACE .)
