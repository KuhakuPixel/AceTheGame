"""
    Make ACE's release for linux desktop and android (multi archs)  automatically
    This script run cmake and makefile to generate the build

    for running a bash command in a directory
    don't use cd but use cwd parameter 
    https://stackoverflow.com/questions/21406887/subprocess-changing-directory
    
"""

import subprocess
import os
import shutil
import multiprocessing
from typing import List
from util import assert_is_dir_and_exist, assert_is_file_and_exist, mkdir_overwrite

LINUX_RELEASE_DIR = "./linux"
ANDROID_RELEASE_DIR = "./android"

ANDROID_ARCH_ABI_ARR = [
    "armeabi-v7a",
    "arm64-v8a",
    "x86",
    "x86_64",
]
# need to be set to at least 23
# for process_vm_read support
# see ACE's cmake for more detail
ANDROID_PLATFORM = "android-23"

CMAKELIST_PATH = "./ACE/engine/"
BUILD_DIR = "./build"


def gen_make_and_make_ACE(
    build_dir: str,
    install_dir: str,
    CMAKElist_dir_path: str,
    toolchain_path: str = None,
    extra_args: List[str] = None,
    # by default, use all cpu for fastest compilation
    # https://unix.stackexchange.com/questions/208568/how-to-determine-the-maximum-number-to-pass-to-make-j-option
    # https://stackoverflow.com/a/1006337/14073678
    cpu_count_for_compile: int = multiprocessing.cpu_count(),
):

    # recreate build and release directory in case its previously
    # not empty
    mkdir_overwrite(build_dir)
    mkdir_overwrite(install_dir)
    # get abs path when possible
    assert_is_dir_and_exist(install_dir)
    install_path = os.path.abspath(install_dir)

    assert_is_dir_and_exist(CMAKElist_dir_path)
    CMAKElist_path = os.path.abspath(CMAKElist_dir_path)

    if toolchain_path != None:
        assert_is_file_and_exist(toolchain_path)
        toolchain_path = os.path.abspath(toolchain_path)
    print(f"install path: {install_path}")
    # generate makefile and run make
    CMAKE_cmd_args = [
        "cmake",
        CMAKElist_path,
        "-DCMAKE_BUILD_TYPE=Release",
        # set install prefix
        # https://stackoverflow.com/questions/6003374/what-is-cmake-equivalent-of-configure-prefix-dir-make-all-install
        "-DCMAKE_INSTALL_PREFIX:PATH=" + install_path,
    ]
    # append extra arguments
    if extra_args != None:
        CMAKE_cmd_args += extra_args
        pass
    # use custom toolchain if provided
    if toolchain_path != None:
        CMAKE_cmd_args.append("-DCMAKE_TOOLCHAIN_FILE=" + toolchain_path)
    # run cmake
    subprocess.run(CMAKE_cmd_args, cwd=build_dir)
    # make the program and install to the specified target
    subprocess.run(
        ["make", "all", "install", f"-j{cpu_count_for_compile}"], cwd=build_dir
    )


def make_release(release_dir: str, android_toolchain_file: str):
    print("making release......")

    mkdir_overwrite(release_dir)

    # ============================ android =====================
    # recreate build dir for building engine
    android_release_dir = os.path.join(release_dir, ANDROID_RELEASE_DIR)
    for arch in ANDROID_ARCH_ABI_ARR:
        # create directory for specific arch release
        current_android_release_dir = os.path.join(android_release_dir, arch)
        #
        gen_make_and_make_ACE(
            build_dir=BUILD_DIR,
            install_dir=current_android_release_dir,
            CMAKElist_dir_path=CMAKELIST_PATH,
            toolchain_path=android_toolchain_file,
            extra_args=[
                "-DANDROID_ABI=" + arch,
                "-DANDROID_PLATFORM=" + ANDROID_PLATFORM,
            ],
        )

    # ============================ linux =====================
    # recreate build dir for building engine
    linux_release_dir = os.path.join(release_dir, LINUX_RELEASE_DIR)
    gen_make_and_make_ACE(
        build_dir=BUILD_DIR,
        install_dir=linux_release_dir,
        CMAKElist_dir_path=CMAKELIST_PATH,
        toolchain_path=None,
    )
