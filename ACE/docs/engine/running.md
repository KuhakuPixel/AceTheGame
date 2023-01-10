

# Running the core engine
To run the program either in your real device, or android studio's emulator
the device needs to be ***rooted***

## Linux desktop

```
$ sudo ./ACE
```

## android emulator
(make sure to have an emulator running 
 before running the steps)


```
# Make sure to be in android_build/
$ # run as root 
$ adb root 
$ # copies the build binary to device (/data/)
$ # the path can be anywhere you wanted 
$ # as long as you have the accsess
$ adb push ./ACE /data/
$ # open device's shell and run the program
$ adb shell
$ cd /data ; ./ACE
```
you can also push the engine binary to 
, if you don't have root when 
doing `adb push`
```
/data/local/tmp/
```
where it is known as the only  directory
that have execute permission in
android

## Gaining root on real/emulated device

using [magisk](https://github.com/topjohnwu/Magisk) 
is the defacto way to get
root and run the ACE engine

[how to root an android emulator](https://github.com/shakalaca/MagiskOnEmulator)
