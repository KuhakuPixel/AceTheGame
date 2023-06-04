cmake_minimum_required(VERSION 3.12)
# common utilities function to be used
# across all projects with "add_subdirectory(PATH_TO_THIS_DIR)"

# 
option(STRIP_ON_RELEASE "Strip Binary on release" TRUE)
# strip binary for release build
# thanks https://stackoverflow.com/a/71236302/14073678
function(strip_target_on_release target_name)
	if (STRIP_ON_RELEASE)
		if (NOT ${CMAKE_STRIP} STREQUAL "")
			message("strip command found at ${CMAKE_STRIP}")
			add_custom_command(
			  TARGET "${target_name}" POST_BUILD
			  COMMAND $<$<CONFIG:release>:${CMAKE_STRIP}>
			  # we need to append it with the full path
			  # because it expect the path to binary 
			  # if we set EXECUTABLE_OUTPUT_PATH to a different location
			  # then this strip function will fail if full path isn't provided
			  # https://cmake.org/cmake/help/latest/variable/EXECUTABLE_OUTPUT_PATH.html
			  # https://stackoverflow.com/a/15886830/14073678
			  ARGS --strip-all $<TARGET_FILE:${target_name}>
			)
		else()
			message(WARNING "Cannot find binary for stripping")
		endif()
		message("Stripped ${target_name}")
	endif()
endfunction()
