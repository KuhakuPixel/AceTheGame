#!/bin/bash

# =================================================
# build apk via gradlew
# https://stackoverflow.com/questions/24398041/build-android-studio-app-via-command-line
# https://developer.android.com/studio/build/building-cmdline
./apk_source/gradlew assembleDebug

# =================================================
# decode without resources and 
# put the smali results in smali folder
# also force them using -f
apktool d apk_source/hello-libs/app/build/outputs/apk/debug/app-debug.apk -r -f -o ./smali
