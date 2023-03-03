# Ace The Game

Game Guardian open source alternative for android
 
that works for non rooted android device! 

Disclaimer!!!: this program is still in beta phase 

## Installation
### Prerequisite
adb program installed and can be run through the command prompt
[adb download](https://developer.android.com/studio/command-line/adb)

## Rooted device
download the latest release for android
choose the architecture of your device 

go to the program folder in terminal
and run

```
adb push ACE /data/local/tmp
```

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

