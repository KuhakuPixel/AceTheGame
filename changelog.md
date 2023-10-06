# ChangeLog

## [0.1.2]

### Fixed

- [Apk] empty progress bar on non rooted device

- [Apk] apk crashing on `Ld Player`

- [Modder] Patch error on some apk
  because of adding smali code to a dex file that is already at its limit


### Added

- [Apk]: Region Level option (select which memory regions to scan) 
- [Apk]: Scroll Bar for table

### Changed
- [ACE] region level's default value from `heap_stack_executable_bss` to `all_read_write`

  (on some device like LdPlayer it isn't finding a match because it excludes important region in name 
   of optimization, this fast scan feature is still experimental, so it shouldn't be used by default)

### Removed

## [0.1.1]

### Fixed
- [Modder] installation fails when Apk's `AndroidManifests.xml` 's `extractNativeLib=false`
- [Modder] patch fails with exception `can't find launchable activity` because of 
           using `aapt1` instead of `aapt2`

### Added
- [APK] add default port when pressing `Connect to ACE's server`
- [Modder] `sign` command to sign apk

### Changed
- [Modder] simplify `patch` command

### Removed

## [0.1.0]

### Fixed
- [APK] error not showing when giving invalid input during scan

### Added
- [APK] freeze value
- [APK] right arrow icon option to add all matches to address table
- [APK] faster scan by only scanning memory region that matters
- [APK] options to delete all (trash icon)  or one address in address table
	(clicking the address of an entry and click `delete this address`)
- [ACE] `region_level` option to choose which region to scan

### Changed
- [APK] press only the value cell to edit address's value instead of the whole row

### Removed
- [APK] unused binary module (apk's size is smaller now)

## [0.0.9]

### Fixed
- [ATG] some of scan options not shown, because it is not scrollable
- [ATG] scanning for value may freeze the entire app due to only using one thread

### Added
- [ATG] progress bar when scanning
- [ATG] Icon for the overlay button

### Changed
### Removed

## [0.0.8]
Initial Alpha release of ATG apk

### Fixed
- [ATG] Nasty Freezing bug in low end device after doing a couple of scan 
  because of incorrect implementation of running `su` binary 
- [ATG] Crash when writting value of different type in Address Table

### Added
- [ATG] Better explanation of the difference between the file ("CHANGELOG")
  and its function "the change log".

- [ATG] `Connect To ACE server` button, this is for developer
  who wants to run their own `ACE` server instead of it being runned by the apk

  this can help with debugging and see the output better
  (because looking at `adb logcat` is painful sometimes :v)

### Changed
- [ATG] handle potrait and landscape orientation for Memory Menu
### Removed
- [ATG] Against value checkbox 

  instead, rely on whether the input field is empty
  to scan with/without value

  suggestion from [lasnik](https://github.com/lasnikprogram)

