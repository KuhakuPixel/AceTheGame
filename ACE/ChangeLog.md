
## [0.1.10] - 2022-11-30

### Added
- simple gui interface with qt
  (currently available only for desktop linux and not android)

### Changed

### Fixed

## [0.1.9] - 2022-11-13

### Added
- cheater mode: 
  	- improve number input checker 
	  by using CLI11 library 

	- add float support altough currently not
	  that precise but still good enough for many .
	  cases (like viewing/editing coordinates of player)


### Changed

### Fixed


## [0.1.8] - 2022-10-30

### Added

- cheater mode: value freezer 

### Changed

### Fixed


## [0.1.7] - 2022-10-30

### Added
- cheater mode command `level` to set the scan level
  to either 

  - exhaustive scan (scan one by one) 

	  ```
	  level all
	  ```

  - only scan for aligned address

	  ```
	  level aligned_only
	  ```

### Changed
- optimize time and space for initial scan by only scanning for 
  address that are aligned to their byte sizes by default


### Fixed

- FIX consequent scan Regression (causing the program to be killed or 
  segfault) introduced in 
  commit 8e17e33c14fae78e8961433fe7b7cb4534ef2594
  (version 0.1.6) fixed in commit
  a5807dab14aa0ab317df762b26424cd9bc8c6423

## [0.1.6] - 2022-10-26

### Added

### Changed
- optimize consequent scan (scan after initial scan) greatly (10x speed)
 	if initial scan has a large match count, consequent will be 
	very slow, since the old algorithm read overlapping 
	or duplicate bytes

	for example initial matches int(4 bytes)
	's addresses are;
		{0xaa1,0xaa2,0xaa3,0xaa4}

	int at 0xaa1 and 0xaa2 has overlapping bytes
	

	

### Fixed

## [0.1.5] - 2022-10-16

### Added
- Cheater Mode: 
	- `writeat` command to write a value at a specific address

- `aslr` command to turn on/off the address space layout randomization
  in linux based system, so previously tracked address of a variable 
  won't change when the game is reloaded

### Changed

### Fixed


## [0.1.4] - 2022-10-14

### Added
- Cheater Mode: 
	- `endian` command to set the endianness 
	   (to use host's cpu endian or swapped) 
	   for scan, write and display

- `freeze_val` a program to freeze a value at an address
  of a process

### Changed

### Fixed

## [0.1.3] - 2022-10-3

### Added
- `readat` command to read at a specific address

### Changed
- by default don't search memory region which name starts 
  with `/dev/` because crucial process's value will not
  be in that region

  also using `process_vm_readv` is really slow on 
  region starting with `/dev/` for an unknown reason
  which I tested on ubuntu 22.04 with kernel 5.17

### Fixed
- on android initial scan using `/proc/<pid>/mem` doesnt work well
  and always fail on read (returning read size of 0) 
  so an alternative `process_vm_readv` from `<sys/uio.h>` is used


## [0.1.2] - 2022-10-2

### Added

### Changed

### Fixed
	scanner's initial scan stores value that
	user wants to search for instead of the
	actual retrieved value

	for example:

	- initial scan to search `!= 0`
	- scanner stores user's input value (0)
	- when listing the scan's results value
	  it will show 0 instead of the newly 
	  retrieved value

## [0.1.1] - 2022-9-30

### Added

### Changed

### Fixed

-  unit test fail on android
-  fails to detect underflow/overflow number input on android
   when inputting a really low (-9999999999999999)
   or really high (999999999999999999999999999)
   

-  java based program are not completly stopped like minecraft and
   android apps when scanning


## [0.1.0] - 2022-9-27

### Added

### Changed
- much faster on initial scan (up to 100 times)
  by :
	  - using `/proc/<pid>/mem` to
	    read process's memory

	    this is much easier to write and optimize
	    
	  - only search region that has read and write permission

- move cheater's mode `type` command from inside the cheater mode
  to the command that starts cheater mode `cheater`

  this prevent the user from scanning with a type and writting with another one
  or vice versa

### Fixed

## [0.0.21] - 2022-9-21

### Added

### Changed
- only pick regions to scan that have write and read permission
  this greatly reduces the search space

- show scan progress on what region is scanned 
  before the actual scan

### Fixed

## [0.0.20] - 2022-9-18

### Added

### Changed

### Fixed
- `ps map -all` count all as special region
   
   whereas `ps map` count the special region correctly

## [0.0.19] - 2022-9-17

### Added

### Changed

### Fixed
Cheater mode: 
	- scanning for type `RAW_BYTE` not working
	  because it uses `short` retriever and writter

## [0.0.18] - 2022-9-16

### Added

Cheater mode:
	- `!=` operator for `filter` or `scan`  command

### Changed

### Fixed

## [0.0.17] - 2022-9-16

### Added

Cheater mode: 
	- Byte support for scan and write

### Changed

### Fixed

## [0.0.16] - 2022-9-16

### Added

Cheater mode: 
	- scan all region options for cheater mode 
	  using `cheater <pid> -a` or `cheater <pid> -all`
	- Display current matches only on related commands 
	  like `scan`,`filter` and list
	- Show time to user to do `scan` and `filter` command
	
	  


### Changed

### Fixed

- return `-1` when `PTRACE_PEEKDATA` fails instead of
  throwing error when the program cannot read a region of other program
  
  error ussualy happens even if sudo is used 
  when using 
  `cheater <pid> -a` options to scan all regions of program

## [0.0.15] - 2022-9-15

### Added
- show memory segment's name in cheater's list command

### Changed

### Fixed

## [0.0.14] - 2022-9-14

### Added
- display suitable region count when using cheater mode

### Changed

### Fixed

## [0.0.13] - 2022-9-13

### Added

### Changed
- ignore case of cheater's type options 
  this makes the command easier to use

### Fixed

## [0.0.12] - 2022-9-13

### Added

### Changed

### Fixed
- writting long value to a process 
  not changing any value
## [0.0.11] - 2022-9-13

### Added
- multiple types support (int,long,short)  for scan and write

### Changed

### Fixed

## [0.0.10] - 2022-9-9

### Added

### Changed
- scan matches display in cheater mode

### Fixed

## [0.0.9] - 2022-9-9

### Added
- `update` command to cheater mode, 
  to retrieve the newest value  of addresses 
  in the current scan result

### Changed

### Fixed

## [0.0.8] - 2022-9-9

### Added
- alias for cheater's mode `filter` ("f" or "filter") 
  and `scan` ("s" or "scan")  command

### Changed

### Fixed

## [0.0.7] - 2022-9-9

### Added
- `-h` options to cheater mode 
  to view documentation

### Changed
- Use CLI11 library to parse line in cheater mode
  this provides better error checking, and make the code cleaner

- `|COMPARASION|` operator to `f |COMPARASION|`
- `|COMPARASION| |num|` operator to `s |COMPARASION| |num|`

### Fixed
- invalid arguments in cheater mode not handled correctly
  example: too many arguments


## [0.0.6] - 2022-9-8

### Added

### Changed

### Fixed
- underflow and overflow input number in cheater console
## [0.0.5] - 2022-9-8

### Added
- reset command in cheater's console to reset scan
  and do an initial scan again

### Changed

- use "|comparasion| |num|" operator in cheater's console 
  to do an initial scan 

	for example: 
	"= 16" -> find value that equals to 16
	"> 15" -> find value greater than 15

### Fixed

## [0.0.4] - 2022-9-6

### Added

### Changed

### Fixed
-  fix `ps ls` command (`list_processes()` function) bug 
   which tries to parse `/proc/[pid]/stat` when [pid] doesn't exist anymore
   (process might have been killed)
   which will throw error because it is reading file that doesn't exist

## [0.0.3] - 2022-9-5

### Added

### Changed

### Fixed
- memory writter writting longer than it should be
  and might cause segfault on the program being traced

## [0.0.2] - 2022-9-5

add `reverse` options for `ps ls` command

## [0.0.1] - 2022-9-5
 
### Added
Initial release of the ACE project, it has memory scanner and a writter
although the performance is questionable I am quite happy about the results

It is good enough to scan and edit the program [here](./example_program/coin_prog)

Currently only supports non android linux system (like ubuntu, debian and ect)
will be added in the future as it is the focus of this project

   
### Changed
 
### Fixed
 
