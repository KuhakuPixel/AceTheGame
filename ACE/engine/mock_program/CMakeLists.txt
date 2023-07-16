cmake_minimum_required(VERSION 3.22)

project(mock_program)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME}
    PRIVATE  lib_ACE-static
)

add_executable(run_mock run_mock.cpp)
target_link_libraries(run_mock
    PRIVATE  lib_ACE-static
)

strip_target_on_release(${PROJECT_NAME})
