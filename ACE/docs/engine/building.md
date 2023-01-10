# Building
this doc assumes that you are in the
root directory of the project

the locations of engine build should be 
in

```
./gui/ACEG/engine_build/
```

linux desktop build:

```
./gui/ACEG/engine_build/linux_desktop
```

android build:
```
./gui/ACEG/engine_build/android
```

this is done 
so the gui knows the path of the engine

### Linux Desktop 

```
$ cd ./gui/ACEG/engine_build/linux_desktop
$ # choose either one
$ # for debugging
$ cmake -DCMAKE_BUILD_TYPE=Debug ../../../../engine/
$ # for release (optimization on)
$ cmake -DCMAKE_BUILD_TYPE=Release ../../../../engine/ 
```
```
$ make
$ # Installing
$ sudo make install

```

### Android

#### Installing prerequisites

- [android studio](https://developer.android.com/studio#downloads)(not needed
  if you only wants to run it directly on your phone)
- [android sdk](https://developer.android.com/studio/releases/platform-tools)
the program will use [ndk](https://developer.android.com/ndk) toolchain
to build on android which can be installed [here](https://developer.android.com/ndk/downloads)
or if android studio is available, it can be installed as shown [here](https://developer.android.com/studio/projects/install-ndk#default-version)

after installation is complete, the program now can be `compiled` using ndk's 
[toolchain](https://cmake.org/cmake/help/latest/manual/cmake-toolchains.7.html)

the toolchain is located at 
```
# <NDK> is the install directory
<NDK>/build/cmake/android.toolchain.cmake
```
in my linux computer(ubuntu), it is located at
```
~/Android/Sdk/ndk/21.4.7075529/build/cmake/android.toolchain.cmake
```
more detail can be found [here](https://developer.android.com/ndk/guides/cmake#file)

#### Building

`ANDROID_PLATFORM`: need to be set to atleast 23 for
		    `process_vm_readv` and `process_vm_writev`
		    support on android


`ANDROID_ABI`: need to be the same arch as the android device
	       (on android adb shell can be checked with `uname -m`)	
	       to avoid weird things from happening
	       infos on all possible ABI 
	       [here](https://developer.android.com/ndk/guides/cmake#android_abi)

examples configuration
```
$ #WARNING: this steps is heaviliy commented for newbies like me
$ cd ./gui/ACEG/engine_build/linux_desktop
$ # <NDK> is the install directory
$ # adjust it with your own ndk's path
$ # also it can be appended with other options 
$ # like when building for x86, for debugging or for release
$ # (Use DANDROID_BUILD=True) to indicate android build
$ cmake -DCMAKE_TOOLCHAIN_FILE=<NDK>/build/cmake/android.toolchain.cmake \
  -DANDROID_BUILD=True -DANDROID_PLATFORM=android-23 -DANDROID_ABI=x86_64 \
  ../../../../engine/
$ make
```


installation with adb (android debug bridge)
```
adb push ./ACE /usr/bin/
```

one liner example to generate cmake
```
cmake -DCMAKE_TOOLCHAIN_FILE=~/Android/Sdk/ndk/21.4.7075529/build/cmake/android.toolchain.cmake\
 -DCMAKE_BUILD_TYPE=Release -DANDROID_BUILD=True -DANDROID_PLATFORM=android-23 \
 ../../../../engine/
```
more info about cmake's options:
1. [DCMAKE_TOOLCHAIN_FILE](https://cmake.org/cmake/help/latest/manual/cmake-toolchains.7.html#cross-compiling)
2. [Specify cmake's toolchain](https://stackoverflow.com/a/5099229/14073678)

### Displaying build options

after running `cmake` either for x86 or android
you can see the build options with

```
cmake -DBUILD_OPTIONS=True ..
```






