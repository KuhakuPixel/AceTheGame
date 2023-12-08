# **Installation Guide**
<img width="200" height="200" src="./assets/icon.png" align="right">
Where all guide about installation and setup resides

You can download all versions of ATG [here](https://github.com/KuhakuPixel/AceTheGame/releases/latest)

## Quick Navigation

- For installing **ATG**, start from [here](#atg)
- For installing **BillingHack**, start from [here](#billinghack)
- For setting up **Modder**, start from [here](#modder)
- For setting up **ACE**, start from [here](#ace)

## ATG

To Use ATG, download this on your phone/device:
- **ATG** for memory scanning and editing: `ATG.apk` which can be downloaded from [here](https://github.com/KuhakuPixel/AceTheGame/releases/latest).
  
- Install **ATG** and run it to verify that it has been installed properly.
- ### Rooted
	For rooted devices, you just need to download the above `Prerequisites` and you can use it straight away without needing to patch the game/application :D
	> Jump straight to [Tutorial](https://github.com/vlenv/AceTheGame/blob/master/tutorial/guides.md) for more information on how to use this tool

- ### Non-Rooted
	For this program to work on non-rooted device, you need to **patch the apk** you wish to run this exploit first by using **Modder** to add hacking features inside the app.
	> For how to install **Modder** you can go [here](#modder)

## BillingHack


The `BillingHack.apk` apk allows you to automatically verify purchases made through patched APKs, enabling you to make in-app purchases for free.
install `BillingHack.apk` [here](https://github.com/KuhakuPixel/AceTheGame/releases/latest).

## Modder

Modder is used for: 
- Hacking In App Purchases 

- Enabling memory scanninng/editing support for non 
  rooter is used for: the memory scanning/editing


Install `ModderRelease.zip` from [here](https://github.com/KuhakuPixel/AceTheGame/releases/)

### Registering Modder as command
this is done so you can use `modder` directly in your terminal

unzip `ModderRelease.zip`, and get the full path to 
`modder/bin/`

Then register the path to your enviroment variable
for example `/home/kuhakupixel/Desktop/proj/AceTheGame/ModderRelease/modder/bin/`

look [here](https://www.java.com/en/download/help/path.html) 
on how to do that


## ACE
cli for memory scanning and editing 
Install `ACERelease.zip`
### Installing memory scanner and editor to device

Inside the `ACERelease` folder, the structure should look like 
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
