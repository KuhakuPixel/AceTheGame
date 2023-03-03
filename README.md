# Ace The Game

Game Guardian open source alternative for android and linux
 
that works for non rooted android device! 

Disclaimer!!!: this program is still in beta phase 
## Showcase
### infinite coin 

![](./assets/showcase/inf_coin.gif)
![](./assets/showcase/inf_coin2.gif)

### fly hack

![](./assets/showcase/flyhack.gif)

## Installation
### Prerequisite
- adb program installed and can be run through the command prompt
 [adb download](https://developer.android.com/studio/command-line/adb)

- [download latest release of AceTheGame](https://github.com/KuhakuPixel/AceTheGame/releases/latest)
  and unzip the file to get `release` folder

  inside the `release` folder, the structure should look like 
  ```
	.
	├── android
	│   ├── bin
	│   ├── include
	│   ├── lib
	│   └── share
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
  of the `release` folder
  ```
  cd [PATH TO YOUR RELEASE FOLDER]
  ```

### Rooted Device
in terminal, go to directory `./android/bin/`

```
adb push ACE /data/local/tmp
```
### Non-Rooted Device
in terminal, go to directory `./android/bin/`

```
adb push engine_client /data/local/tmp
```
this binary will be used to scan and edit memory of the apk

#### Optional:
for alternative install directory that is available in android
look [here](https://android.stackexchange.com/questions/45554/running-own-executable-on-android-shell)

## Usage

### Rooted Device
## Build instruction
### clone repo
#### https
```
git clone --recurse-submodules https://github.com/KuhakuPixel/AceTheGame.git
```
#### ssh
```
git clone --recurse-submodules git@github.com:KuhakuPixel/AceTheGame.git
```


after build with 
```
./build.sh
```

to run the program
you can drop to the container by using

```
./run_shell.sh
cd /ApkTool/brut.apktool/apktool-cli/build/libs/
java -jar apktool-cli-all.jar
```
found the path using, and finding the biggest size
```
find . -type f -name "*.jar" | xargs du -h | sort -h
```

