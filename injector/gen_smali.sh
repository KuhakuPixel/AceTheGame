#!/bin/bash
# =====================================================
# brief: 	
# 	for auto generating a smali from java program
# 	that can be injected into an apk 
#
# =====================================================
PROJECT_ROOT_DIR=$(pwd)
# =================================================
echo "Generating temp APK"
# build apk via gradlew
# https://stackoverflow.com/questions/24398041/build-android-studio-app-via-command-line
# https://developer.android.com/studio/build/building-cmdline

# have go to the directory of gradlew
# first because it needs build.gradle and 
# etc in the directory of where this command
# runs, cannot just do
# ./apk_source/hello-libs/gradlew assembleDebug
cd ./apk_source/hello-libs/
./gradlew assembleDebug
# go back
cd "${PROJECT_ROOT_DIR}"


# =================================================
TEMP_GENERATED_SMALI_FOLDER="/tmp/temp_smali"
GENERATED_SMALI_DIR="${TEMP_GENERATED_SMALI_FOLDER}/smali/com/example"
GENERATED_NATIVE_LIB_DIR="${TEMP_GENERATED_SMALI_FOLDER}/lib"
SMALI_TO_INJECT_DIR="./smali_to_inject"

echo "decompiling temp APK"
# decode without resources and 
# put the smali results in smali folder
# also force them using -f
apktool d apk_source/hello-libs/app/build/outputs/apk/debug/app-debug.apk -r -f -o ${TEMP_GENERATED_SMALI_FOLDER}

echo "Copying smali"
# put the smali for injection
cp ${GENERATED_SMALI_DIR} ${SMALI_TO_INJECT_DIR} -r

echo "Copying native libraries"
# put native lib if any
cp "${GENERATED_NATIVE_LIB_DIR}" "${SMALI_TO_INJECT_DIR}/lib" -r

echo "Cleaning up temp directories at ${TEMP_GENERATED_SMALI_FOLDER}"
rm -rf ${TEMP_GENERATED_SMALI_FOLDER}

echo "Smali For injection generated at ${SMALI_TO_INJECT_DIR}"

