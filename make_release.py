import ACE_release
import Modder_release
import argparse
import os
from util import mkdir_overwrite
from build_option import ANDROID_ARCH_ABI_ARR
import shutil

RELEASE_DIR = "./release"

if __name__ == "__main__":
    # ===================== making commands ========
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "android_toolchain_file",
        help="path to android's cmake toolchain file, usually come with android ndk",
    )
    args = parser.parse_args()
    android_toolchain_file = args.android_toolchain_file
    # ==============================================

    # make sure to start with clean directory
    print("making release......")
    mkdir_overwrite(RELEASE_DIR)

    ACE_release.make_release(
        release_dir="ACERelease",
        android_toolchain_file=android_toolchain_file,
    )

    Modder_release.make_release(
        release_dir="ModderRelease",
    )
