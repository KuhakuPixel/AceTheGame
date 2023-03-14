# Developer Guide

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
## Project Structure
build instruction is provided at the readme of each subproject. 

Folder 			| Description
---------------------- 	| -----------------------------------------------
[ACE](./ACE/) 		| Memory scanner and editor for linux and android
[Modder](./Modder) 	| Attaching a memory scanner and editor service in the apk itself so you can read/write memory without root
[injector](./injector/) | Generate smali code that will start  memory scanner and editor service  in apk. generated Code will be used by [Modder](./Modder)


