# AceTheGame

 A cheat engine like program for android without root

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


after build with 
```
./build.sh
```

to run the program
you can drop to the container by using

```
./run_shell.sh
cd /ApkTool/brut.apktool/apktool-cli/build/libs/
java -jar apktool-cli-all.jar
```
found the path using, and finding the biggest size
```
find . -type f -name "*.jar" | xargs du -h | sort -h
```

