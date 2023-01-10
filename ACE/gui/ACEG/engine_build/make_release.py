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

LINUX_DESKTOP_BUILD_DIR = "./linux_desktop"

ANDROID_BUILD_DIR = "./android"
ANDROID_ARCH_ABI_ARR = [
    "armeabi-v7a",
    "arm64-v8a",
    "x86",
    "x86_64",
]

CMAKELIST_PATH = "../../../../engine/"
RELEASE_BUILD_DIR = "./release"
PROGRAM_NAME = "ACE"

print("making release......")

# =============================== make release folder ==============
if not os.path.exists(RELEASE_BUILD_DIR):
    os.makedirs(RELEASE_BUILD_DIR)
    pass
else:
    # remove everything from previous release
    print("cleaning previous release ...")
    shutil.rmtree(RELEASE_BUILD_DIR)
    # make build dir
    os.makedirs(RELEASE_BUILD_DIR)
# ================================== linux desktop ==================================
print("- for linux desktop:")
linux_desktop_release_dir = os.path.join(RELEASE_BUILD_DIR, LINUX_DESKTOP_BUILD_DIR)
os.makedirs(linux_desktop_release_dir)
# generate makefile and run make
subprocess.run(
    ["cmake", "-DCMAKE_BUILD_TYPE=Release", CMAKELIST_PATH], cwd=LINUX_DESKTOP_BUILD_DIR
)
subprocess.run(["make"], cwd=LINUX_DESKTOP_BUILD_DIR)
# create release dir
linux_desktop_x86_release_dir = os.path.join(linux_desktop_release_dir, "x86/")
os.makedirs(linux_desktop_x86_release_dir)
# copy to release dir
shutil.copy(
    os.path.join(LINUX_DESKTOP_BUILD_DIR, PROGRAM_NAME),
    os.path.join(linux_desktop_x86_release_dir, PROGRAM_NAME),
)
#
# =================================== android ===========================================

print("- for android:")
android_release_dir = os.path.join(RELEASE_BUILD_DIR, ANDROID_BUILD_DIR)
os.makedirs(android_release_dir)

for arch in ANDROID_ARCH_ABI_ARR:
    print("building android %s" % (arch))
    # generate makefile and run make
    subprocess.run(
        [
            "cmake",
            "-DCMAKE_BUILD_TYPE=Release",
            "-DANDROID_ABI=%s" % (arch),
            CMAKELIST_PATH,
        ],
        cwd=ANDROID_BUILD_DIR,
    )
    subprocess.run(["make"], cwd=ANDROID_BUILD_DIR)

    # make dir with arch as name
    current_android_release_dir = os.path.join(android_release_dir, arch)
    os.makedirs(current_android_release_dir + "/")
    # copy to release dir
    shutil.copy(
        os.path.join(ANDROID_BUILD_DIR, PROGRAM_NAME),
        os.path.join(current_android_release_dir, PROGRAM_NAME),
    )
