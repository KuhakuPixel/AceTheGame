### Prerequisite
- adb program installed and can be run through the command prompt
 [adb download](https://developer.android.com/studio/command-line/adb)

### Installing memory scanner and editor to device

  inside the `release` folder, the structure should look like 
  ```

	├── android
	│   ├── arm64-v8a
	│   │   ├── bin
	│   │   ├── include
	│   │   ├── lib
	│   │   └── share
	│   ├── armeabi-v7a
	│   │   ├── bin
	│   │   ├── include
	│   │   ├── lib
	│   │   └── share
	│   ├── x86
	│   │   ├── bin
	│   │   ├── include
	│   │   ├── lib
	│   │   └── share
	│   └── x86_64
	│       ├── bin
	│       ├── include
	│       ├── lib
	│       └── share
	├── linux
	│   ├── bin
	│   ├── include
	│   ├── lib
	│   └── share
	└── modder
	    ├── bin
	    └── lib

  ```
- open the terminal and go to the directory
  of your specific architecture
  ```
  ./android/[ARCH]/bin
  ```

  for example if your arch is `arm64-v8` then `cd`
  to directory of `./android/arm64-v8a/bin`

#### Rooted Device

```
adb push ./ACE /data/local/tmp
adb shell chmod +x /data/local/tmp/ACE 
```
#### Non-Rooted Device

```
adb push ./attach_client /data/local/tmp
adb shell chmod +x /data/local/tmp/attach_client 
```

this binary will be used to scan and edit memory of the apk

#### Optional:
for alternative install directory that is available in android
look [here](https://android.stackexchange.com/questions/45554/running-own-executable-on-android-shell)
