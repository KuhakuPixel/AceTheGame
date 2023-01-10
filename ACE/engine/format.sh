#!/bin/bash
# format cpp's project files
# creds: https://stackoverflow.com/a/36046965/14073678
# https://stackoverflow.com/a/15736463/14073678
find . -iname *.hpp -o -iname *.cpp -not -path "./build/*" -not -path "./android_build/*"\
	| xargs clang-format -i --verbose
