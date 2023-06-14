cmake_minimum_required(VERSION 3.12)

project(ACE_client)
find_package(cppzmq)

include(../cmake_utils/CMakeLists.txt)
# ======================== binaries ===============
set(client_programs attach_client util_client)
foreach(program_name IN LISTS client_programs)
	# get the source code of the program
	set(program_name_src_file "${program_name}.cpp")
	# ======================= client ==================
	add_executable(
		${program_name}
		${program_name_src_file}
	)

	target_link_libraries(
		${program_name}
		PRIVATE cppzmq-static lib_ACE-static
	)

	strip_target_on_release(${program_name})
	# ============================================= install options ========================

	install (TARGETS ${program_name}
	    DESTINATION bin)
	# ======================================================================================
endforeach()
