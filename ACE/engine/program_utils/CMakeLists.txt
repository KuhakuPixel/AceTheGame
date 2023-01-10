cmake_minimum_required(VERSION 3.0)
# Set the project name
project(program_utils)

add_compile_options(-Wall -Werror)

# Add an executable
add_executable(freeze_val freeze_val.cpp)
target_link_libraries(freeze_val lib_ACE)

# Add an executable
add_executable(address_check address_check.cpp)
target_link_libraries(address_check lib_ACE)

# Add an executable
add_executable(scan_and_write_self scan_and_write_self.cpp)
target_link_libraries(scan_and_write_self lib_ACE)
