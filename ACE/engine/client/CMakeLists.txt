cmake_minimum_required(VERSION 3.12)

project(engine_client)
find_package(cppzmq)

include(../cmake_utils/CMakeLists.txt)
# ======================= client ==================
add_executable(
	${PROJECT_NAME}
	client.cpp 
)

#TODO: maybe link statically in the future
target_link_libraries(
	${PROJECT_NAME}
	PRIVATE cppzmq-static lib_ACE-static
)

strip_target_on_release(${PROJECT_NAME})
# ============================================= install options ========================

install (TARGETS ${PROJECT_NAME}
    DESTINATION bin)
# ======================================================================================
