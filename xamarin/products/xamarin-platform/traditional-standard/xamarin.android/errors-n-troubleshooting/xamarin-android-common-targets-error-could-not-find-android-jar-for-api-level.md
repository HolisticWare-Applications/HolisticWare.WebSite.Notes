# Xamarin.Android.Common.targets: error : Could not find android.jar for API Level

xamarin-android-common-targets-error-could-not-find-android-jar-for-api-level.md

On Mac

AppData\Local\Xamarin.Android\Cache

Xamarin.Android.Common.targets: error : Could not find android.jar for API Level 25. 
This means  the Android SDK platform for API Level 25 is not installed. 
Either install it in the Android SDK Manager (Tools > Open Android SDK Manager...),
or 
change your Xamarin.Android project to target an API version that is installed. 
(C:/Users/moljac/AppData/Local/Xamarin/Universal/AndroidSDK/platforms/android-25/android.jar missing.)


remove

    C:\Users\USERNAME\AppData\Local\Xamarin



Java

    %ProgramFiles%\Java\jdk1.8.0_102

    JAVA_HOME=%ProgramFiles%\Java\jdk1.8.0_102

Android SDK

    ANDROID_HOME=%LOCALAPPDATA%\Android\android-sdk
    ANDROID_HOME=%LOCALAPPDATA%\Xamarin\Universal\AndroidSDK    
    ANDROID_HOME=%LOCALAPPDATA%\Xamarin\MonoForAndroid\AndroidSDK

    ANDROID_NDK_PATH=%PROGRAMFILES%\Android\ndk\android-ndk-r11c

    ANDROID_HOME=${Env:LOCALAPPDATA}\Android\android-sdk

## Caches

    %LOCALAPPDATA%\Xamarin\Cache
    %LOCALAPPDATA%\XamarinStudio-6.0\Cache

## Logs

    %LOCALAPPDATA%\Xamarin\Logs\14.0