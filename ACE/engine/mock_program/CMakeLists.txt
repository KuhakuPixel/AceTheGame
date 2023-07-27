cmake_minimum_required(VERSION 3.12)

project(mock_program)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME}
    PRIVATE  lib_ACE-static
)
strip_target_on_release(${PROJECT_NAME})
