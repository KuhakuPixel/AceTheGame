cmake_minimum_required(VERSION 3.12)

project(engine_client)
find_package(cppzmq)

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

# ============================================= install options ========================

install (TARGETS ${PROJECT_NAME}
    DESTINATION bin)
# ======================================================================================
