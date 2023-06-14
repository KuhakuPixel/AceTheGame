# Set the minimum version of CMake that can be used To find the cmake version
# run $ cmake --version
#  	error when compiling tests
cmake_minimum_required(VERSION 3.12)

macro(print_all_variables)
    message(STATUS "print_all_variables------------------------------------------{")
    get_cmake_property(_variableNames VARIABLES)
    foreach (_variableName ${_variableNames})
        message(STATUS "${_variableName}=${${_variableName}}")
    endforeach()
endmacro()

# recommended way of creating options to be passed by user
# https://stackoverflow.com/questions/12896988/passing-an-argument-to-cmake-via-command-prompt
SET(ACE_ANDROID_BINARY_ROOT_OUTPUT_DIR "" CACHE PATH "Export program to a path for a ANDROID_ABI and put it in {PATH}/{ANDROID_ABI}")
# set project name
set (PROJECT_NAME "ACE")
project(${PROJECT_NAME})
# ====================================== build options ============
option(BUILD_OPTIONS "display the specified build options" FALSE)
# =================================================================

# =================================== if android build ============
# can only export to a certain path if building for android
message("ACE_ANDROID_BINARY_ROOT_OUTPUT_DIR: ${ACE_ANDROID_BINARY_ROOT_OUTPUT_DIR}")
if (NOT "${ACE_ANDROID_BINARY_ROOT_OUTPUT_DIR}" STREQUAL "")
	if (ANDROID)
		# set binary output folder to Android assets folder
		set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${ACE_ANDROID_BINARY_ROOT_OUTPUT_DIR}/${ANDROID_ABI}")
	else()
		message(FATAL_ERROR "Can only Set ACE_ANDROID_BINARY_ROOT_OUTPUT_DIR if building for android")
	endif()
	
endif()
# https://gitlab.kitware.com/cmake/community/-/wikis/doc/tutorials/How-To-Write-Platform-Checks
# https://stackoverflow.com/questions/9160335/os-specific-instructions-in-cmake-how-to
if (ANDROID)
	message("android platform level : ${ANDROID_PLATFORM_LEVEL}")
	# ensure that process_vm_readv and process_vm_writev
	# is available because it is only added in API level 23
	# 
	# bionic status: 
	# https://android.googlesource.com/platform/bionic/+/master/docs/status.md
	if (${ANDROID_PLATFORM_LEVEL} LESS 23)
		message(WARNING "ANDROID_PLATFORM needs to be at least 23 but 
		${ANDROID_PLATFORM_LEVEL} is passed")

		message(FATAL_ERROR "You need to set -DANDROID_PLATFORM to at 
		least \"android-23\"")
		
	endif()
	# for android we cannot use /proc/<pid>/mem
	# to read/write because it will fail on important memory region 
	# (return read size of 0) for some reasons, even though
	# in linux desktop it is fine
	# 
	# instead use process_vm_readv or process_vm_writev
	# from <sys/uio.h>
	# which works well in android
	add_compile_definitions(USE_PROC_VM_READ_WRITEV)
	message("using process_vm_writev and process_vm_readv")
endif()
# =================================================================

add_library(common_flag INTERFACE)

# use target_compile_options so the compile flags can be reused
# https://stackoverflow.com/a/23995391/14073678
# https://stackoverflow.com/questions/60041896/reuse-target-compile-options-from-variable-for-multiple-targets-cmake
# -fno-rtti is used so class names won't be generated
# in binary (RTTI)
# https://stackoverflow.com/a/4948438/14073678
target_compile_options(common_flag INTERFACE -Wall -Werror
	 		-fno-rtti)


set(lib_ACE_src 
	src/maps.cpp src/file_utils.cpp src/error.cpp
	src/str_utils.cpp src/proc_stat.cpp src/scanner.cpp src/ACE_global.cpp src/ptrace.cpp
	src/input.cpp src/cheat.cpp src/cheat_cmd_handler.cpp src/ace_type.cpp src/simulated_memory.cpp
	src/common.cpp src/proc_rw.cpp src/proc_create.cpp src/endian.cpp src/aslr_edit.cpp 
	src/main_cmd_handler.cpp src/loaded_mem_info.cpp src/scan_utils.cpp src/thread_continuous.cpp src/freeze.cpp
	src/to_frontend.cpp src/math_util.cpp src/match_store.cpp src/ACE_jni.cpp src/server.cpp
	src/engine_module.cpp src/cheat_session.cpp src/engine_server.cpp src/attach_client.cpp
	src/main_cmd_creator.cpp
)

add_library(lib_ACE SHARED ${lib_ACE_src})
add_library(lib_ACE-static STATIC ${lib_ACE_src})

# ============= Populating lib_ACE's Including Directories ============
# so other project can include it easily  
# https://stackoverflow.com/questions/48554758/why-create-an-include-directory-in-c-and-c-projects

target_include_directories(lib_ACE
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

target_include_directories(lib_ACE-static
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# =====================================================================

# ============= link ace's library with dependencies
# libraries that lib_ACE need
set(lib_ACE_linked_libraries common_flag cppzmq-static linenoise-static)

message("linked libraries: ${lib_ACE_linked_libraries}")
# add extra library to link to for android (logging and etc)
if(ANDROID)
	list(APPEND lib_ACE_linked_libraries android log)
endif()

target_link_libraries(lib_ACE PRIVATE ${lib_ACE_linked_libraries})
target_link_libraries(lib_ACE-static PRIVATE ${lib_ACE_linked_libraries})

# ================================================================================
# for unit testing the the file's utils copy necessary files into the build
# folder Just in case that it is built in a different directory
file(COPY test/test_files DESTINATION .)

# ================================================================================
include(./cmake_utils/CMakeLists.txt)
# CTest needs to read the location of the mem check command (valgrind ,it needs
# to read from DartConfiguration.tcl, and to make that this instruction is
# needed credits :
# https://stackoverflow.com/questions/26498089/ctest-does-not-find-valgrind

include(CTest)
# add unit tests
enable_testing()

# third party library
add_subdirectory(third_party/)
# attach_client
add_subdirectory(client/)
# test
add_subdirectory(test/)
add_test(NAME test_ace COMMAND test_ace)
# ================================================================================
# build example program
add_subdirectory(example_program/)
# 
add_subdirectory(program_utils/)

# ===============================================================================
# build main program
add_executable(${PROJECT_NAME} src/main.cpp)
# ===============================================================================
if (STRIP_ON_RELEASE)
	strip_target_on_release(${PROJECT_NAME})
endif()
# ===============================================================================
# link against the library and add compile's options defined in common_flag
target_link_libraries(${PROJECT_NAME} PRIVATE common_flag)
target_link_libraries(${PROJECT_NAME} PRIVATE lib_ACE-static)

if(BUILD_OPTIONS)
	message("build options: ")
	print_all_variables()
endif()

# ============================================= install options ========================

# Binaries
install (TARGETS ${PROJECT_NAME}
    DESTINATION bin)
# ======================================================================================
