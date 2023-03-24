
java Injection is be done by using following :

1. I tried to workout on how the smali asm would
   look like when I tried to call a function
   from another java package,o
   as seen  [here](./smali/smali/com/example/hellolibs/MainActivity.smali)
   which calls code another package from [here](./smali/smali/com/example/utils/math_util.smali)

   it doesn't need any fancy imports, just to specify 
   the full path of where that package is 

   this is how it looks like
    ```
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/example/utils/math_util;->sum(II)I

    move-result v2
    ```

    as long as the java code to be injected are in put in the same "com"?
    folder as the main function to inject to , it will work out



==================================================================
- lets try to build or run it as a server? that seems quite good 
alternative actually of course, a docker is gonnna be needed

