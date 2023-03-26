cmake_minimum_required(VERSION 3.12)
# common utilities function to be used
# across all projects with "add_subdirectory(PATH_TO_THIS_DIR)"

# 
option(STRIP_ON_RELEASE "Strip Binary on release" TRUE)
# strip binary for release build
# thanks https://stackoverflow.com/a/71236302/14073678
function(strip_bin_on_release bin_name)
	if (STRIP_ON_RELEASE)
		if (NOT ${CMAKE_STRIP} STREQUAL "")
			message("strip command found at ${CMAKE_STRIP}")
			add_custom_command(
			  TARGET "${bin_name}" POST_BUILD
			  COMMAND $<$<CONFIG:release>:${CMAKE_STRIP}>
			  ARGS --strip-all "${bin_name}"
			)
		else()
			message(WARNING "Cannot find binary for stripping")
		endif()
		message("Stripped ${bin_name}")
	endif()
endfunction()
