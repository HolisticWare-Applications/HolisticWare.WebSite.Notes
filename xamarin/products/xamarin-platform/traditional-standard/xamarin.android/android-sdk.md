# Android SDK

## Locations

If installed with Android Studio (2.x)

```
    /Users/$(whoami)/Library/Android/sdk/
    /Users/$(whoami)/Library/Android/sdk/ndk-bundle
```

*   http://developer.android.com/sdk/older_releases.html?


OR -
First check this link to find out what revision number you need. Then use one of these links:

```
http://dl-ssl.google.com/android/repository/tools_r[rev]-windows.zip
http://dl-ssl.google.com/android/repository/tools_r[rev]-linux.zip
http://dl-ssl.google.com/android/repository/tools_r[rev]-macosx.zip
```


http://dl-ssl.google.com/android/repository/tools_r24.1-macosx.zip

## Links/References

*   https://androidsdkmanager.azurewebsites.net/Buildtools


```
error XA5300: The Android SDK Directory could not be found.

BuildTools\MSBuild\Xamarin\Android\Xamarin.Android.Bindings.targets(170,5): 
error XA5300: 
    The Android SDK Directory could not be found. Please set via /p:AndroidSdkDirectory.
```

```
export AndroidSdkDirectory=/home/user1/.android-sdk-installer/android-sdk-linux
```