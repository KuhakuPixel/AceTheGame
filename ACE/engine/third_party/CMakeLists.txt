# include 
cmake_minimum_required(VERSION 3.22)

# notes that ordering in this case
# matters, cppzmq depends on libzmq
# so libzmq comes first
add_subdirectory(./libzmq)
add_subdirectory(./cppzmq)
