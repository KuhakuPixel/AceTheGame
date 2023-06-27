# ChangeLog

## [0.0.1]
Initial Alpha release

### Fixed
- Nasty Freezing bug in low end device after doing a couple of scan 
  because of incorrect implementation of running `su` binary 
- Crash when writting value of different type in Address Table

### Added
- Better explanation of the difference between the file ("CHANGELOG")
  and its function "the change log".

- `Connect To ACE server` button, this is for developer
  who wants to run their own `ACE` server instead of it being runned by the apk

  this can help with debugging and see the output better
  (because looking at `adb logcat` is painful sometimes :v)

### Changed
- handle potrait and landscape orientation for Memory Menu
### Removed