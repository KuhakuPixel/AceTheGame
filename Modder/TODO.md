
- fix [INSTALL_FAILED_INVALID_APK: Failed to extract native libraries, res=-2]
  this seems to happen when the apk has manifest of
  /manifest/application[@android:extractNativeLibs] to false
  (happens with splitted apk)
  https://github.com/iBotPeaches/Apktool/issues/1626

- auto signer when patching the apk 
