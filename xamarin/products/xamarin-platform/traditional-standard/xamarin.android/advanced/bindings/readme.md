# Bindings

*   https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

## Troubleshooting

*   https://www.liudeyun.net/Troubleshooting-for-Xamarin-Android-binding-project/

*   https://stackoverflow.com/questions/3643395/how-to-get-android-crash-logs


```
#!/bin/bash -e
CONFIG="${1:-Release}"
TIMING_MODE=bare # fast-bare, timing
USE_AOT=true
TRIM=false
MARSHAL_METHODS=YesPlease
PACKAGE_NAME="com.microsoft.net6.helloandroid"
ACTIVITY_NAME="helloandroid.MainActivity"

rm -rf bin obj ../packages
#adb shell setprop debug.mono.log default,assembly,timing=bare,mono_log_mask=gc:dll:asm,mono_log_level=debug
#adb shell setprop debug.mono.log default,gref=gref_file_name.txt,gref-,lref=lref_file_name.txt,debugger-log-level=10
adb shell setprop debug.mono.log default,timing=bare,assembly,mono_log_mask=asm:type:aot,mono_log_level=debug
#adb shell setprop debug.mono.log default,timing=bare,assembly
#adb shell setprop debug.mono.log default,assembly,timing=${TIMING_MODE}

if $(adb shell getprop debug.mono.log | grep 'timing=' > /dev/null 2>&1); then
    if [ "${TIMING_MODE}" == "fast-bare" ]; then
        FAST_TIMING="true"
    else
        FAST_TIMING="false"
    fi
else
    FAST_TIMING="false"
fi

dotnet-xa build -f net7.0-android -bl -t:Install \
                  -p:Configuration=${CONFIG} \
                  -p:Enable64BitBuild=true \
                  -p:EnableAllRIDs=true \
                  -p:AndroidPackageFormat=apk \
                  -p:RunAOTCompilation=${USE_AOT} \
                  -p:AndroidEnableProfiledAot=${USE_AOT} \
                  -p:EnableLLVM=false \
                  -p:PublishTrimmed=${TRIM} \
                  -p:AndroidUseAssemblyStore=true \
                  -p:_AndroidFastTiming=${FAST_TIMING} \
                  -p:_EnableMarshalMethods=${MARSHAL_METHODS}

# -p:UseInterpreter=True
# -p:RunAOTCompilation=True -p:AndroidEnableProfiledAot=True -p:EnableLLVM=True
```

1.  prepare logging (`logcat`)

    ```bash
    adb logcat -G 16M
    adb logcat -c
    ```

2.  start the app

3.  collect the log

    ```bash
    export TIMESTAMP=$(date "+%Y%m%d-%H%M%S")
    echo TIMESTAMP = $TIMESTAMP
    adb logcat -d > log-$TIMESTAMP.txt
    ```

Advanced - automated script

    ```
    adb logcat -G 16M
    adb logcat -c
    adb shell am start -n ${PACKAGE_NAME}/${ACTIVITY_NAME} -S -W

    if [ "${FAST_TIMING}" == "true" ]; then
        adb shell am broadcast -a mono.android.app.DUMP_TIMING_DATA ${PACKAGE_NAME}
    fi

    adb logcat -d > log.txt
    ```