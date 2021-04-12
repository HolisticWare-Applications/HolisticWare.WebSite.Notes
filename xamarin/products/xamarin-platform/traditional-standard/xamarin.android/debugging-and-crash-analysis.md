# Debugging and Crash Analysis

debugging-and-crash-analysis.md

*   in logcat of your Android device/emulator. 

*   to record it, do the following

    *   Build and deploy your application but do not start it (Debug configuration)

    *   Switch to terminal and issue the following commands

        ```
        adb shell setprop debug.mono.log default,assembly,timing=bare
        adb logcat -G 16M
        adb logcat -c
        ```

*   Start your application and cause it to crash

    *   Back on command line issue the following commands

    ```
    adb logcat -d > crash.txt
    ```


```
adb shell
am start -n com.package.name/com.package.name.ActivityName
```

Or you can use this directly:

```
adb shell am start -n com.package.name/com.package.name.ActivityName
```

You can also specify actions to be filter by your intent-filters:

```
am start -a com.example.ACTION_NAME -n com.package.name/com.package.name.ActivityNam
````

It's possible to run application specifying package name only using monkey tool by follow this pattern:

```
adb shell monkey -p your.app.package.name -c android.intent.category.LAUNCHER 1
```

```
adb shell am start -n com.package.name/.ActivityName
```

Step 1: First get all the package name of the apps installed in your Device, by using:

```
adb shell pm list packages
````

Step 2: You will get all the package names, copy the one you want to start using adb.

Step 3: Add your desired package name in the below command.

```
adb shell monkey -p 'your package name' -v 500
```

run the following command to fetch the crash logs (they all will be archived and zip downloaded 
and share it
 
```
adb bugreport
```


Based on the Play Market crashes reports, only Android 10 is affect across multiple (some of the them 
like Samsung Note are affected more than other) devices and users.
 
 


 

2.  All of these new are crashes are SIGNAL 11 CODE 1 (and sometime Code 2) crashes in libmonosgen-2.0.so.
3.  We were able to reproduce the crash locally on multiple devices by running a script which runs the 
    app multiple times and waits until it crashes. Usually it crashes after hundreds of times (sometimes 300-400 times)
 
```
signal 11 (SIGSEGV), code 1 (SEGV_MAPERR), fault addr 0x0
Cause: null pointer dereference
```



After downloading the tombstone file from device using `adb bugreport` and later using ndk-stack and 
shared lib to symbolize the stack trace  we were able to get detailed stack trace:
 
```
> ndk-stack \
    -sym "/Users/astrakh/Desktop/Sources/ridecommand-app/Droid/obj/Debug/app_shared_libraries/armeabi-v7a" \
    -dump /Users/astrakh/Desktop/bugreport-Vivo_XL3-O00623-2020-07-21-15-22-14/FS/data/tombstones/tombstone_02 \
    > \
    ~/Desktop/bugreport_dump.txt
```
 
It's still hard to analyze that dump (i'll attached both tombstone and symbolized stack in the end of this 
message) and we discovered  that a lot of threads where stopped at `syscall+28` (around 16 threads like that):
 

Stack frame #00 pc 000000000001d62c  /system/lib64/libc.so (syscall+28)
Stack frame #01 pc 0000000000066690  /system/lib64/libc.so (pthread_cond_timedwait+156)
Stack frame #02 pc 0000000000277bfc  /data/app/Mono.Android.DebugRuntime-sAMjP4_it-QRVq7FgT3HfQ==/lib/arm64/libmonosgen-64bit-2.0.so


[7/22 8:25 PM] Marek Habersack
    can you please do adb logcat -G 1M; adb logcat -c before dumping the logcat?
(1 liked)​[7/22 8:25 PM] Marek Habersack
    before starting the app
​[7/22 8:25 PM] Marek Habersack
    that would clear the logcat buffer and minimize the noise
​[7/22 8:26 PM] Marek Habersack
    and only then start the app, when the crash happens please follow with adb logcat -d > log.txt
(1 liked)


[7/22 8:33 PM] Marek Habersack
    the above is the path from the tombstone
​[7/22 8:33 PM] Marek Habersack
    you should be able to pull it from there with adb pull
​[7/22 8:33 PM] Alexey Strakh
    is it the same if I changed the user code already and redeployed the app?
Edited




adb shell setprop debug.mono.log default,assembly,timing=bare


[7/23 7:54 PM] Marek Habersack
    These are just debug warnings

​[7/23 7:54 PM] Marek Habersack
    shown only if you used adb setprop debug.mono.log assembly
​[7/23 7:54 PM] Marek Habersack
    if you remove that property you will stop seeing the messages
​[7/23 7:54 PM] Alexey Strakh
    Initially I didn't have them and app started faster





Made sure to first run adb logcat -G 1M; adb logcat -c

Followed by adb shell setprop debug.mono.log default,assembly,timing=bare

Then added adb logcat -d > log.txt to the end of the reloading script which generated the log.txt






[7/23 9:01 PM] Alexey Strakh
    
signal 11 (SIGSEGV), code 1 (SEGV_MAPERR)
split_config.arm64_v8a.apk!libmonosgen-2.0.so (offset 0x1e7b000)


in PlayMarket the error is SIGSEGV
​[7/23 9:02 PM] Alexey Strakh
    

and neither segfault, nor SIGABRT

Edited​[7/23 9:02 PM] Marek Habersack
    SIGSEGV is segfault
(1 liked)Edited


adb pull /data/app/Mono.Android.DebugRuntime-sAMjP4_it-QRVq7FgT3HfQ==/lib/arm64/libmonosgen-64bit-2.0.so



