# =====================================================
"""
brief:
    for auto generating a smali from java program
    that can be injected into an apk

    the smali code and native lib will be used for starting up the memory scanning/editing
    service directly in the apk 

steps:
    - build the apk [./apk_source] with gradle 
    - decompile the apk using apktool
    - get smali code for injection and ACE engine's native library 
      from decompilation in the previous step

      it is possible because it use ACE engine's lib via JNI
      and has class to start the library 
    - copy the smali and native library to [Modder]'s resource directory
  


TODO: make it runnable in windows also
"""
# =====================================================
import subprocess
import os
import shutil
import tempfile

# =========================== funcs =============


def cp_folder(src: str, dest: str):
    # if destination exist remove
    if os.path.exists(dest):
        shutil.rmtree(dest)
    # then copy
    shutil.copytree(src, dest)

# creating temp dir for decompilation result
# https://stackoverflow.com/a/55104228/14073678
with tempfile.TemporaryDirectory() as TEMP_DECOMPILED_APK_DIR:
    # ============================= paths ==================
    APK_SOURCE_ROOT_DIR = "./apk_source/hello-libs"

    OUT_CODE_FOR_INJECT_DIR = (
        "../../Modder/modder/src/main/resources/AceAndroidLib/code_to_inject"
    )
    SMALI_RELATIVE_DIR = "smali/com/AceInjector"

    GENERATED_SMALI_DIR = os.path.join(TEMP_DECOMPILED_APK_DIR, SMALI_RELATIVE_DIR)
    # get path to native lib for source and destination
    GENERATED_NATIVE_LIB_DIR = os.path.join(TEMP_DECOMPILED_APK_DIR, "lib")
    NATIVE_LIB_OUT_DIR = os.path.join(OUT_CODE_FOR_INJECT_DIR, "lib")


    # ======================================================


    print("Generating temporary apk")
    subprocess.run(["gradle", "assembleDebug"], cwd=APK_SOURCE_ROOT_DIR, shell=True)

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
        ],
        shell=True
    )

    # put the smali for injection
    OUT_SMALI_DIR = os.path.join(OUT_CODE_FOR_INJECT_DIR, SMALI_RELATIVE_DIR)
    print("Copying smali %s to %s" % (GENERATED_SMALI_DIR, OUT_SMALI_DIR))
    cp_folder(GENERATED_SMALI_DIR, OUT_SMALI_DIR)

    print("Copying native libs")
    cp_folder(GENERATED_NATIVE_LIB_DIR, NATIVE_LIB_OUT_DIR)


    # zip the smali code for easier resource access by [Modder]
    # don't need to add ".zip" extension, because 
    # it will do it for us
    OUT_SMALI_DIR_ZIPPED_FILE = OUT_SMALI_DIR 
    shutil.make_archive(
        OUT_SMALI_DIR_ZIPPED_FILE, "zip", GENERATED_SMALI_DIR
    )
    print("Generated zipped smali at %s" % (OUT_SMALI_DIR_ZIPPED_FILE))
    print("Code for injection is generated at %s" % (OUT_CODE_FOR_INJECT_DIR))

