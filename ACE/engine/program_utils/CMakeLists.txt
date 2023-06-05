cmake_minimum_required(VERSION 3.0)
# Set the project name
project(program_utils)

add_compile_options(-Wall -Werror)

# Add an executable
add_executable(address_check address_check.cpp)
target_link_libraries(address_check lib_ACE)
strip_target_on_release(address_check)
