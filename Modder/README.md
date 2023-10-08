# Modder

program to provide non-root support via patching

## Building
### requirements
- [python](https://www.python.org/downloads/)
- [apktool](https://apktool.org/docs/install/)
- [gradle](https://gradle.org/install/)

### generating code to inject

```sh
cd injector
python ./gen_smali.py
cd ../
```
### Build

```sh
gradle build
```
the build's [location](https://docs.gradle.org/current/samples/sample_building_java_applications.html#bundle_the_application) 

`./modder/build/distributions/modder.zip`

## Running tests

```sh
gradle test
```

## Project Structure
build instruction is provided at the readme of each subproject. 

Folder 				| Description
----------------------------- 	| -----------------------------------------------
[injector](./injector/) 	| Generate smali code that will start  memory scanner and editor service  in apk. generated Code will be used by [Modder](./Modder)


## Dependacy

powered by apktool which is built from source code
and the jar file is [included](./modder/lib) 
