# Injector 
Tools for injecting ace engine's library
to an android apk/game
## 

compile with android studio

Build -> Build Bundles/APK(s) -> Build APK(s)
https://stackoverflow.com/a/54002115/14073678

## generate smali

```sh
./gen_smali.sh
```
## Injection

- use apk tool to get `AndroidManifest`

- parse the `AndroidManifest.xml` to find
  the main activity if not found throw an error

- redo the decompilation with `-r` option 
  to specify to not decompile resource file
  because sometimes decompiling resource might
  throw error "brute erro"


# License
[AGPL3](./LICENSE)
![](./docs/asset/License.png)


