# Ace The Game

Game Guardian open source alternative for android and linux
 
that also works for non rooted android device! 

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
Notes: type command `-h` to list all available commands
### Rooted Device
open up adb shell and go to the program location
```
adb shell
cd /data/local/tmp
```

```
chmod +x ./ACE 
./ACE
```
then you should see the following promp
```
You are rooted, all feautres will work

ACE Engine, a game hacking tools for linux and android

Copyright (C) 2022 AceEngineSoftware@gmail.com
Author: Kuhaku Pixel (https://github.com/KuhakuPixel)

For update news, feature request and discussion regarding 
Ace Engine
Discord Server: https://discord.com/invite/MhrFwpYm
================= IMPORTANT ==============================
before using this software type `license` command and enter
to view the license of the software.

(ACE) 
```
#### list running process
list running processes with
```
ps ls
```

```
(ACE) ps ls
...
...
52507 brave
52641 brave
52778 adb
52785 kworker/4:2-events
52850 brave
52867 brave
52889 brave
54795 opensurge
```
#### select running process
lets say we want to attach to `opensurge
```
(ACE) cheater 54795

```
now you should be attached
```
attaching to process 54795 
set type to int
(CHEATER)
```


#### Scanning for value
lets say in the game, there is a coin with value of `3`
we gonna have to search for the address of that coin
in order to have infinite coin

```
(CHEATER) scan = 3
```

then its gonna take a while and output something like
```
current matches: 13946
Done in: 1.347762 s
```

now we just change the coin value in the game 
and scan for the changed value to further filter 
all of the addresses that we got

lets say we collect one more coin so our coin becomes
`4` right now

we just scan for 4

```
(CHEATER) scan = 4
```

```
current matches: 20
Done in: 0.021650 s
```
repeat the steps above
until you got 1-3 matches

#### writting to matches
now that you have the address of the coin which 
can be seen by the list command
```
(CHEATER) list
0x55b525a27650 7
```
you can write any value you want to it by using
```
(CHEATER) write 999999
```
and now you should have `999999` coin

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

