# Xamarin.Android on Linux - Emulator setup

xamarin-android-linux-emulator-setup.md 

    Starting emulator for AVD 'Android_ARMv7a'
    sh: lspci: command not found
    sh: glxinfo: command not found
    sh: lspci: command not found
    sh: glxinfo: command not found
    libGL error: No matching fbConfigs or visuals found
    libGL error: failed to load driver: swrast
    getGLES2ExtensionString: Could not find GLES 2.x config!
    Failed to obtain GLES 2.x extensions string!
    Could not initialize emulated framebuffer
    adb_server_notify: Failed to establish connection to ADB server
    Creating filesystem with parameters:
        Size: 69206016
        Block size: 4096
        Blocks per group: 32768
        Inodes per group: 4224
        Inode size: 256
        Journal blocks: 1024
        Label: 
        Blocks: 16896
        Block groups: 1
        Reserved block group size: 7
    Created filesystem with 11/4224 inodes and 1302/16896 blocks
    emulator: Listening for console connections on port: 5554
    emulator: Serial number of this emulator (for ADB): emulator-5554
    emulator: ERROR: Could not initialize OpenglES emulation, use '-gpu off' to disable it.


Standard c++ library is missing.

    apt-get install \
        lib64stdc++6:i386
    sudo apt-get install \
        lib64stdc++6

    cd $ANDROID_HOME/Sdk/tools/lib64/libstdc++
    mv libstdc++.so.6 libstdc++.so.6.bak
    ln -s /usr/lib64/libstdc++.so.6 $ANDROID_HOME/Sdk/tools/lib64/libstdc++
    $ANDROID_HOME/Sdk/tools/emulator -use-system-libs -avd YOUR_VIRTUAL_DEVICE_NAME



export ANDROID_HOME="$HOME/XamarinSDKs/android-sdk-linux"
