#!/bin/bash


# decode without resources and 
# put the smali results in smali folder
# also force them using -f
apktool d apk_source/hello-libs/app/build/outputs/apk/debug/app-debug.apk -r -f -o ./smali
