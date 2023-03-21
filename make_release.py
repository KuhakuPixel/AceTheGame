"""
    for making releases of 
    different arch of the ACE Engine
    note that a `MAKEFILE` needs to be 
    generated firsts

    for running a bash command in a directory
    don't use cd but use cwd parameter 
    https://stackoverflow.com/questions/21406887/subprocess-changing-directory
    
"""

import subprocess
import os
import glob
import shutil
import argparse
from typing import List

LINUX_DESKTOP_BUILD_DIR = "./linux_desktop"

ANDROID_BUILD_DIR = "./android"
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
RELEASE_DIR = "./release"
BUILD_DIR = "./build"
PROGRAM_NAME = "ACE"


def assert_is_file_and_exist(filename: str):
    if not os.path.exists(filename):
        raise FileNotFoundError(filename)
    if not os.path.isfile(filename):
        raise Exception(f"{filename} is not a file")


def assert_is_dir_and_exist(dirname: str):
    if not os.path.exists(dirname):
        raise FileNotFoundError(dirname)

    if not os.path.isdir(dirname):
        raise NotADirectoryError()(f"{dirname} is not a dir")


def mkdir_overwrite(dir_name: str):
    # remove dir first if exist previously
    if os.path.exists(dir_name) and os.path.isdir(dir_name):
        shutil.rmtree(dir_name)
    # create it
    os.makedirs(dir_name)


def gen_make_and_make_ACE(
    dir_name: str,
    install_path: str,
    CMAKElist_dir_path: str,
    toolchain_path: str = None,
    extra_args: List[str] = None,
):
    # get abs path when possible
    assert_is_dir_and_exist(install_path)
    install_path = os.path.abspath(install_path)

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
    subprocess.run(CMAKE_cmd_args, cwd=dir_name)
    # make the program and install to the specified target
    # https://stackoverflow.com/questions/6003374/what-is-cmake-equivalent-of-configure-prefix-dir-make-all-install
    # also use core of 8 to make compilation faster
    # TODO: determine core count programatically
    subprocess.run(["make", "all", "install", "-j8"], cwd=dir_name)


# ===================== making commands ========
parser = argparse.ArgumentParser()
parser.add_argument(
    "android_toolchain_file",
    help="path to android's cmake toolchain file, usually come with android ndk",
)
args = parser.parse_args()
android_toolchain_file = args.android_toolchain_file
# ==============================================
print("making release......")

mkdir_overwrite(RELEASE_DIR)

# ============================ android =====================
# recreate build dir for building engine
mkdir_overwrite(BUILD_DIR)
android_release_dir = os.path.join(RELEASE_DIR, "android")
mkdir_overwrite(android_release_dir)

for arch in ANDROID_ARCH_ABI_ARR:
    # create directory for specific arch release
    current_android_release_dir = os.path.join(android_release_dir, arch)
    mkdir_overwrite(current_android_release_dir)
    #
    gen_make_and_make_ACE(
        dir_name=BUILD_DIR,
        install_path=current_android_release_dir,
        CMAKElist_dir_path=CMAKELIST_PATH,
        toolchain_path=android_toolchain_file,
        extra_args=[
            "-DANDROID_ABI=" + arch,
            "-DANDROID_PLATFORM=" + ANDROID_PLATFORM,
        ],
    )

# ============================ linux =====================
# recreate build dir for building engine
mkdir_overwrite(BUILD_DIR)
linux_release_dir = os.path.join(RELEASE_DIR, "linux")
mkdir_overwrite(linux_release_dir)
gen_make_and_make_ACE(
    dir_name=BUILD_DIR,
    install_path=linux_release_dir,
    CMAKElist_dir_path=CMAKELIST_PATH,
    toolchain_path=None,
)
