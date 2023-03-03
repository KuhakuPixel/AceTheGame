# Good release features
  
# Features
- support for changing scan type directly in cheater mode
  this will ease the interface to another program

## Refactor

## Cores
- fix  `input.cpp`'s  `linenoise::Readline` not taking input on
  my old android device 
- allow to change scan for value type in cheater mode
  (only allow at the beggining of the scan with the scan command)
  
- reserve memory for scan matches 's storage (a std vector)
  so that first time doing a scan in the program
  wouldn't be very slow , for some reason
  clang miss this optimization?

  this probably explain why my first time scanning
  in the program is super slow but when I 
  reset the scan and scan again it is much faster
  because the memory has been allocated, the std vector
  don't have to allocate for memory again!

- add git submodule to get the ndk folders

- add progress bar for each region scan

- Add `auto` type for cheater's mode:
  determine the type of number to scan, based on user's input
  select lowest type that supports the input number 
  since this will make scan result good
  why : 
  can scan for `short` if input is only "121" even
  if the actual value intreperted by the program is `long`
  but not true otherwise

## Command Lines
## Android Port

- deal with different endianess especially in a java based program
  where most of java vm reads is big endian but most of cpu today are 
  little endian

	- https://stackoverflow.com/questions/362384/does-java-read-integers-in-little-endian-or-big-endian
	- https://stackoverflow.com/questions/65389086/how-does-java-handle-endianess-when-running-on-little-endian-cpu-architectures
	- https://stackoverflow.com/questions/6212951/endianness-of-android-ndk

## GUI

- create global config files for
  all path and program name
  of the ace engine

- make connect_device return a shell
  on success, None on failure

- each engine should have a shell inside
  that can be modified, so that the engine
  can be switched for different devices at runtime

- have a global object that contains all the engines?
  (how to manage multiple engine?, main one, for finding 
   processess one and ect)

- in on_connect_device_button, 
	-check if engine is installed
  	 if not then use adb push the engine,
	- run the engine and check if it has
	  a gui protocol as first command to send


## Files
add `_t` endfix for test file
to not confuse gdb
## For building
- use docker to build minimal working
  enviroment to compile the program
  

