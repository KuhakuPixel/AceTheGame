"""
    contains path to where the engine and other programs
    are built
"""

import os

# need to use abs path to get the built engine path
# https://stackoverflow.com/questions/7165749/open-file-in-a-relative-location-in-python
ABS_SCRIPT_PATH = os.path.dirname(__file__)

_ENGINE_PROG_NAME = "ACE"

# relative to where the script
# will be built, for more info check the top level
# cmake
_RELATIVE_ENGINE_PATH = "../engine_build/linux_desktop/" + _ENGINE_PROG_NAME
_RELATIVE_ACE_MOCK_PATH = "../engine_build/linux_desktop/example_program/ACE_mock"

_RELATIVE_ANDROID_ENGINE_PATH = "../engine_build/android/" + _ENGINE_PROG_NAME
# get path to built engine and other programs
ABS_BUILT_ENGINE_PATH = os.path.join(ABS_SCRIPT_PATH, _RELATIVE_ENGINE_PATH)
ABS_BUILT_ANDROID_ENGINE_PATH = os.path.join(ABS_SCRIPT_PATH, _RELATIVE_ANDROID_ENGINE_PATH)
ABS_BUILT_ACE_MOCK_PATH = os.path.join(ABS_SCRIPT_PATH, _RELATIVE_ACE_MOCK_PATH)
