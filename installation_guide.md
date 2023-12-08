# **Installation Guide**
Where all guide about installation and setup resides

You can download all versions of ATG [here](https://github.com/KuhakuPixel/AceTheGame/releases/latest)

## Quick Navigation

- For installing **ATG**, start from [here](#atg)
- For setting up **Modder**, start from [here](#modder)
- For setting up **CLI Scanner**, start from [here](#cli)

## ATG
To Use ATG, download this on your phone/device:
- **ATG** for memory scanning and editing: `app-release.apk` which can be downloaded from [here](https://github.com/KuhakuPixel/AceTheGame/releases/latest).
  
- Install **ATG** and run it to verify that it has been installed properly.
- ### Rooted
	For rooted devices, you just need to download the above `Prerequisites` and you can use it straight away without needing to patch the game/application :D
	> Jump straight to [Tutorial](https://github.com/vlenv/AceTheGame/blob/master/tutorial/guides.md) for more information on how to use this tool

- ### Non-Rooted
	For this program to work on non-rooted device, you need to **patch the apk** you wish to run this exploit for first using **Modder** to add functionality inside the apk.
	> For how to install **Modder** you can go [here](#Modder)

## Modder


## Apk 
### ATG
- ### Rooted
	For rooted devices, you just need to download the above `Prerequisites` and you can use it straight away without needing to patch the apk :D
	> Jump straight to [Tutorial](https://github.com/vlenv/AceTheGame/blob/master/tutorial/guides.md) for more information on how to use this tool

- ### Non-Rooted
	For this program to work on non-rooted device, you need to **patch the apk** you wish to run this exploit for first to add the `memory scanner and editor` feature inside the apk

	### Notes:
	1. There are extra files you need to download `release.zip` to patch the apk which can be downloaded from [here](https://github.com/KuhakuPixel/AceTheGame/releases/latest)

	1. Unzip the `release.zip` and in the `release` folder, navigate to folder `./modder/bin`
		> Command: `cd ./modder/bin`

		```
		For Windows, run `modder.bat` as the first command

		While for Linux and Mac, run `./modder` as the first command in your pc
		```
		**Notes**:
		Copy the path to your `environment variables` for easier use
		> For example: [path]\release\modder\bin

	1. For this installation guide, i'm gonna run the first command as `./modder` since i use Linux :D
		> Note: run `./modder --help` for more info about available commands

	### Preparation
	1. Activate developer mode and USB debugging on your phone/device
	1. Connect your phone/device to your pc/laptop
		> Note: you can use command `adb devices` to see if your device is successfully connected to your pc/laptop

		> Having troubles? You can see the **guide** from [here](https://www.guru99.com/adb-connect.html)
	1. Make sure the game you want to run this exploit for is installed on that connected phone/device

	### Downloading the apk to your pc/laptop
	1. Find the apk package name by listing all the installed apk on your phone/device
		```
		./modder list
		```
	1. Download it to your pc so we can start patching the apk
		```
		./modder download [APK_PACKAGE_NAME]
		```
	1. After download, you should have a folder called `[APK_PACKAGE_NAME]` inside your current directory
	
	### Attaching memory scanner
	1. Start patching the apk
		```
		./modder patch -m [APK_PACKAGE_NAME] 
		```
	1. After it finishes, it should create a folder with the package name ending with `.patched` which is the folder that contains the patched apk
		> For example: `[APK_PACKAGE_NAME].patched`
	
	### Installing the patched apk
	1. Uninstall the previous/original apk on your phone/device
	1. Install the patched apk on your phone/device
		```
		modder install [APK_PACKAGE_NAME].patched
		```
	
	### Attach the patched apk to the tool
	1. Open ATG on your phone/device and click on `Connect to ACE Server`
	1. Put `56666` in the input field to attach the patched apk to the tool and press `Okay`
	1. After attached, you can start the exploit
		> Jump straight to [Tutorial](https://github.com/vlenv/AceTheGame/blob/master/tutorial/guides.md) for more information on how to use this tool

### BillingHack
- For both rooted & non-rooted device, you need to patch the apk first. However the steps are the same as [above](#non-rooted)

- The difference is when you [patch](#attaching-memory-scanner) the apk, you use `-i` instead of `-m`
	```
	./modder patch -i [APK_PACKAGE_NAME] 
	```
- After you finished installing the patched apk back to your phone/device, you are good to go :D

## CLI
### Installing memory scanner and editor to device

Inside the `release` folder, the structure should look like 
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
Open the terminal and go to the directory
of your specific architecture
```
./android/[ARCH]/bin
```

For example if your arch is `arm64-v8` then `cd`
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
For alternative install directory that is available in android
look [here](https://android.stackexchange.com/questions/45554/running-own-executable-on-android-shell)


## Video Tutorial
- For [Apk](https://www.youtube.com/watch?v=UlGm1nFxRzA)

- For [CLI only](https://www.youtube.com/watch?v=UlGm1nFxRzA)

- Non rooted support (coming soon)
