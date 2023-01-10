# roadmap


## android
- allow usage without root 
  by decompiling the application loading `lib_ACE`
  and add an icon on top the app, if clicked
  it will display an overlay for cheating thingss

  `proc_rw` module has to be modified so that it can
  read and write to its own process, well this can 
  be done easily and much easier just by 
  derefrencing the addresses to read/write a value
  to its own process via c language, well duh uh of course
  it can write to it self,

  but the only downside is we cannot use pause while scan
  because there

  ideas from: https://fadeevab.com/frida-gadget-injection-on-android-no-root-2-methods/



