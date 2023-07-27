# ChangeLog

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
