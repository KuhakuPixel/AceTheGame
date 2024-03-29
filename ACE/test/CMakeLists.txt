# Set the minimum version of CMake that can be used To find the cmake version
# run $ cmake --version
cmake_minimum_required(VERSION 3.12)
# Set the project name
project(test_ace)

add_compile_options(-Wall -Werror)

# Add an executable
add_executable(${PROJECT_NAME} test_main.cpp maps.cpp file_utils.cpp vector_util.cpp test_mock_program_controller.cpp
                               str_utils.cpp proc_stat.cpp scanner.cpp 
			       common.cpp proc_rw.cpp endian.cpp
			       aslr_edit.cpp scan_utils.cpp thread_continuous.cpp
			       freeze.cpp match_store.cpp math_util.cpp to_frontend.cpp
			       engine_module.cpp engine_server_client.cpp)

if(ANDROID)
	# we need to link to log library
	# because catch2 framework uses <android/log.h>
	# https://stackoverflow.com/a/4629747/14073678
	# https://stackoverflow.com/a/4629747/14073678
	message("Android Build=${ANDROID}")
	target_link_libraries(${PROJECT_NAME} lib_ACE-static common_flag)
else()
	target_link_libraries(${PROJECT_NAME} lib_ACE-static common_flag)
endif()

strip_target_on_release(${PROJECT_NAME})
