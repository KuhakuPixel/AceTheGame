#!/bin/python3

# =====================================================
# brief:
# 	for auto generating a smali from java program
# 	that can be injected into an apk
#
# =====================================================
import subprocess
import os
import shutil

# =========================== funcs =============


def cp_folder(src: str, dest: str):
    # if destination exist remove
    if os.path.exists(dest):
        shutil.rmtree(dest)
    # then copy
    shutil.copytree(src, dest)


# ============================= paths ==================
APK_SOURCE_ROOT_DIR = "./apk_source/hello-libs"

CODE_FOR_INJECT_DIR = "./code_to_inject"

TEMP_DECOMPILED_APK_DIR = "/tmp/temp_decompiled_apk"
SMALI_RELATIVE_DIR = "smali/com/example"

GENERATED_SMALI_DIR = os.path.join(TEMP_DECOMPILED_APK_DIR, SMALI_RELATIVE_DIR)
# TODO: need to check if there is an actually native lib
GENERATED_NATIVE_LIB_DIR = os.path.join(TEMP_DECOMPILED_APK_DIR, "lib")
NATIVE_LIB_OUT_DIR = os.path.join(CODE_FOR_INJECT_DIR, "lib")


# ======================================================


print("Generating temporary apk")
subprocess.run(["./gradlew", "assembleDebug"], cwd=APK_SOURCE_ROOT_DIR)

# decode without resources and
# put the smali results in smali folder
# also force them using -f
print("decompiling temp APK")
subprocess.run(
    [
        "apktool",
        "d",
        "apk_source/hello-libs/app/build/outputs/apk/debug/app-debug.apk",
        "-r",
        "-f",
        "-o",
        "%s" % (TEMP_DECOMPILED_APK_DIR),
    ]
)

# put the smali for injection
OUT_SMALI_DIR = os.path.join(CODE_FOR_INJECT_DIR, SMALI_RELATIVE_DIR)
print("Copying smali %s to %s" % (GENERATED_SMALI_DIR, OUT_SMALI_DIR))
cp_folder(GENERATED_SMALI_DIR, OUT_SMALI_DIR)

print("Copying native libs")
cp_folder(GENERATED_NATIVE_LIB_DIR, NATIVE_LIB_OUT_DIR)

print("Cleaning up temp dirs at %s" % (TEMP_DECOMPILED_APK_DIR))
shutil.rmtree(TEMP_DECOMPILED_APK_DIR)

print("Code for injection is generated at %s" % (CODE_FOR_INJECT_DIR))
