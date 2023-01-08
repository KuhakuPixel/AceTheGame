#!/bin/bash
PROJECT_ROOT_DIR=$(pwd)
SMALI_TO_INJECT_DIR="smali_to_inject"
GENERATED_SMALI_DIR="./smali/smali/com/example"
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
echo "decompiling temp APK"
# decode without resources and 
# put the smali results in smali folder
# also force them using -f
apktool d apk_source/hello-libs/app/build/outputs/apk/debug/app-debug.apk -r -f -o ./smali

echo "Copying smali for injection"
# put the smali for injection
cp ${GENERATED_SMALI_DIR} ${SMALI_TO_INJECT_DIR} -r

echo "Done!!!"
