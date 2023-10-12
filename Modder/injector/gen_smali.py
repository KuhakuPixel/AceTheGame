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
  

"""
# =====================================================
import subprocess
import os
import shutil
import tempfile

# ============================= paths ==================
APK_SOURCE_ROOT_DIR = "./apk_source/hello-libs"
APK_BUILT_OUTPUT_PATH = (
    "apk_source/hello-libs/app/build/outputs/apk/debug/app-debug.apk"
)

OUT_CODE_FOR_INJECT_DIR = (
    "../../Modder/modder/src/main/resources/AceAndroidLib/code_to_inject"
)
SMALI_RELATIVE_DIR = "smali/com/AceInjector"

OUT_SMALI_DIR = os.path.join(OUT_CODE_FOR_INJECT_DIR, SMALI_RELATIVE_DIR)
OUT_SMALI_DIR_ZIPPED_FILE = OUT_SMALI_DIR
NATIVE_LIB_OUT_DIR = os.path.join(OUT_CODE_FOR_INJECT_DIR, "lib")

# =========================== funcs =============


def cp_folder(src: str, dest: str):
    # if destination exist remove
    if os.path.exists(dest):
        shutil.rmtree(dest)
    # then copy
    shutil.copytree(src, dest)


# creating temp dir for decompilation result
# https://stackoverflow.com/a/55104228/14073678
with tempfile.TemporaryDirectory() as temp_decompiled_apk_dir:
    generated_smali_dir = os.path.join(temp_decompiled_apk_dir, SMALI_RELATIVE_DIR)
    # get path to native lib for source and destination
    generated_native_lib_dir = os.path.join(temp_decompiled_apk_dir, "lib")

    print("Generating temporary apk")
    subprocess.run("gradle assembleDebug", cwd=APK_SOURCE_ROOT_DIR, shell=True)

    # decode without resources and
    # put the smali results in smali folder
    # also force them using -f
    print("decompiling temp APK")
    # command must be put in one string when setting `shell=True`
    # https://stackoverflow.com/questions/26417658/subprocess-call-arguments-ignored-when-using-shell-true-w-list
    subprocess.run(
        f"apktool d {APK_BUILT_OUTPUT_PATH} -r -f -o {temp_decompiled_apk_dir}",
        shell=True,
    )

    # put the smali for injection
    print("Copying smali %s to %s" % (generated_smali_dir, OUT_SMALI_DIR))
    cp_folder(generated_smali_dir, OUT_SMALI_DIR)

    print("Copying native libs")
    cp_folder(generated_native_lib_dir, NATIVE_LIB_OUT_DIR)

    # zip the smali code for easier resource access by [Modder]
    # don't need to add ".zip" extension, because
    # it will do it for us
    shutil.make_archive(OUT_SMALI_DIR_ZIPPED_FILE, "zip", generated_smali_dir)
    print("Generated zipped smali at %s" % (OUT_SMALI_DIR_ZIPPED_FILE))
    print("Code for injection is generated at %s" % (OUT_CODE_FOR_INJECT_DIR))
