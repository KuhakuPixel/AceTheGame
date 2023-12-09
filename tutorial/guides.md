# **Tutorial**
<img width="200" height="200" src="/assets/icon.png" align="right">

Tutorial of Memory Scanner/Editor, BillingHack, Modder 

You can download all versions of ATG [here](https://github.com/KuhakuPixel/AceTheGame/releases/latest)

## Quick Navigation

- Tutorial for using **Memory Scanner and Editor**, start from [here](#memory-scanner-and-editor)
- Tutorial for using **BillingHack**, start from [here](#billinghack) 
- Tutorial for using **CLI Scanner**, start from [here](#cli)

## Notes: 
- This is only a brief tutorial,
for more in depth and real practice visit [here](/tutorial)

## Prerequisite
If you haven't done any installation, you need to download and install the tools first by visiting [here](/installation_guide.md)

## Memory Scanner and Editor
This tutorial is for game memory scanning and modification.

- ### Rooted
1. #### Select Running Process
      Open the ATG apk and choose the name of the desired game you want to run this exploit for
      > Note: If the desired game doesn't appear, make sure to click the refresh button `↻`

2. #### Scanning For Value

      1. Open the ATG and move to the `Memory` tab 
      
      2. Put the current value of the item (coin, diamond, etc) you want to change inside the `Scan For` input field and press `Next Scan` to retrieve all the addresses that has that value

      3. If the number of matching addresses is too large, filter down the number of matching addresses by increasing/decreasing the item value and scan for that increased/decreased value
         > Repeat the steps above as many times as possible if you think the number of matching addresses is still too large
      4. Click on the remaining address and it will be added to the `Address Table` tab, where you can start editing its value to your desired value
      5. Switch to the `address table` tab and click on the `value` cell to edit its value
      6. Put any value that you wanted and press `Okay`
      7. Change the item value by increase/decrease the value to update its UI

- ### Non-Rooted
1. #### Patch the Game (.apk)
   1. Find the apk package name by listing all the installed apk on your phone/device
		```
		./modder list
		```
	1. Download it to your pc so we can start patching the apk
		```
		./modder download [APK_PACKAGE_NAME]
		```
	1. After download, you should have a folder called `[APK_PACKAGE_NAME]` inside your current directory
	
	1. Start patching the apk
		```
		./modder patch -m [APK_PACKAGE_NAME] 
		```
	1. After it finishes, it should create a folder with the package name ending with `.patched` which is the folder that contains the patched apk
		> For example: `[APK_PACKAGE_NAME].patched`
	
  	1. Uninstall the previous/original apk on your phone/device
	1. Install the patched apk on your phone/device
		```
		modder install [APK_PACKAGE_NAME].patched
		```
	1. Open ATG on your phone/device and click on `Connect to ACE Server`
	1. Put `56666` in the input field to attach the patched apk to the tool and press `Okay`
	1. After attached, you can start the exploit
 
3. #### Scanning For Value

      1. Open the ATG and move to the `Memory` tab 
      
      2. Put the current value of the item (coin, diamond, etc) you want to change inside the `Scan For` input field and press `Next Scan` to retrieve all the addresses that has that value

      3. If the number of matching addresses is too large, filter down the number of matching addresses by increasing/decreasing the item value and scan for that increased/decreased value
         > Repeat the steps above as many times as possible if you think the number of matching addresses is still too large
      4. Click on the remaining address and it will be added to the `Address Table` tab, where you can start editing its value to your desired value
      5. Switch to the `address table` tab and click on the `value` cell to edit its value
      6. Put any value that you wanted and press `Okay`
      7. Change the item value by increase/decrease the value to update its UI

   
      
## BillingHack
For both rooted & non-rooted device, you need to patch the apk first. However the steps are the same as [above](#non-rooted)

1. ### Patch the Game (.apk)
   1. Find the apk package name by listing all the installed apk on your phone/device
		```
		./modder list
		```
	1. Download it to your pc so we can start patching the apk
		```
		./modder download [APK_PACKAGE_NAME]
		```
	1. After download, you should have a folder called `[APK_PACKAGE_NAME]` inside your current directory
	
	1. Start patching the apk
		```
		./modder patch -i [APK_PACKAGE_NAME] 
		```
	1. After it finishes, it should create a folder with the package name ending with `.patched` which is the folder that contains the patched apk
		> For example: `[APK_PACKAGE_NAME].patched`
	
  	1. Uninstall the previous/original apk on your phone/device
      
	1. Install the patched apk on your phone/device
		```
		modder install [APK_PACKAGE_NAME].patched
		```
	1. After installation you can start interacting using our billinghack tool

## CLI
   Open up adb shell and go to the program location
   ```
   adb shell
   cd /data/local/tmp
   ```

   ```
   ./ACE
   ```
   Then you should see the following promp.
   ```
   You are rooted, all feautres will work

   ACE Engine, a game hacking tools for linux and android

   Copyright (C) 2022 AceEngineSoftware@gmail.com
   Author: Kuhaku Pixel (https://github.com/KuhakuPixel)

   For update news, feature request and discussion regarding 
   Ace Engine
   Discord Server: https://discord.com/invite/MhrFwpYm
   ================= IMPORTANT ==============================
   before using this software type `license` command and enter
   to view the license of the software.

   (ACE) 
   ```
   1. ### List Running Process
      List running processes with:
      ```
      ps ls
      ```

      ```
      (ACE) ps ls
      ...
      ...
      52507 brave
      52641 brave
      52778 adb
      52785 kworker/4:2-events
      52850 brave
      52867 brave
      52889 brave
      54795 opensurge
      ```
   1. ### select running process
      Lets say we want to attach to `opensurge`
      ```
      (ACE) cheater 54795
      ```
      Now you should be attached
      ```
      attaching to process 54795 
      set type to int
      (CHEATER)
      ```


   1. ### Scanning for value
      Lets say in the game, there is a coin with value of `3`

      We gonna have to search for the address of that coin in order to have infinite coin

      ```
      (CHEATER) scan = 3
      ```

      Then its gonna take a while and output something like:

      ```
      current matches: 13946
      Done in: 1.347762 s
      ```

      Now we just change the coin value in the game and scan for the changed value to further filter all of the addresses that we got

      Lets say we collect one more coin so our coin becomes `4` right now.

      We just scan for 4.

      ```
      (CHEATER) scan = 4
      ```

      ```
      current matches: 20
      Done in: 0.021650 s
      ```

      Repeat the steps above until you got 1-3 matches

   1. ### writting to matches
      Now that you have the address of the coin which can be seen by the list command,
      ```
      (CHEATER) list
      0x55b525a27650 7
      ```
      you can write any value you want to it by using
      ```
      (CHEATER) write 999999
      ```
      and now you should have `999999` coin




   You can also use this as a library in your apk/project

   See the [docs here](https://github.com/KuhakuPixel/AceTheGame/blob/master/ACE/readme.md)
