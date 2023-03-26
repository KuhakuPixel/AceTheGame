import ACE_release
import Modder_release
import argparse
import os
from util import mkdir_overwrite
from build_option import ANDROID_ARCH_ABI_ARR
import shutil

RELEASE_DIR = "./release"
ATG_ACE_BIN_RES_DIR = os.path.join("./ATG/app/src/main/res/bin/", ACE_release.ACE_BIN_NAME)

def copy_ace_bin_to_ATG(dest_root_path:str):
    mkdir_overwrite(ATG_ACE_BIN_RES_DIR)
    for arch in ANDROID_ARCH_ABI_ARR:
        src_bin_path = os.path.join(dest_root_path, arch, "bin", ACE_release.ACE_BIN_NAME)
        #
        dest_dir = os.path.join(ATG_ACE_BIN_RES_DIR, arch)
        mkdir_overwrite(dest_dir)
        dest_bin_path = os.path.join(dest_dir,ACE_release.ACE_BIN_NAME)
        shutil.copy(src=src_bin_path, dst=dest_bin_path,)

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
         release_dir=RELEASE_DIR,
         android_toolchain_file=android_toolchain_file,
    )

    # copy ACE to ATG
    copy_ace_bin_to_ATG(dest_root_path=os.path.join(RELEASE_DIR,"android"))
    # 
     
    Modder_release.make_release(
        release_dir=RELEASE_DIR,
    )
