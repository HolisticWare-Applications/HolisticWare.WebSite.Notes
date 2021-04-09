# Building xamarin-android on Windows


building-xamarin-android-on-windows.md

*   https://docs.microsoft.com/en-us/xamarin/android/deploy-test/building-apps/build-process

*   https://github.com/xamarin/xamarin-android/wiki

    *   https://github.com/xamarin/xamarin-android/wiki/How-to-Contribute-Code

*   Jon Peppers

    *   https://www.youtube.com/watch?v=8qaQleb6Tbk&ab_channel=XamarinDevelopers

## Notes

*   build

    *   languages

        *   C#

        *   java

        *   c/c++ (mono)

    *   platforms

        *   windows

        *   MacOSX

        *   Linux

*   commandline tools

    *   msbuild

    *   make (MacOSX)

    *   xabuild

    *   adb

*   prequisites

    *   mono or .NET framework

    *   Visual Studio or Visual Studio Code

    *   Java

    *   Android

        *   SDK

        *   NDK

    *   some stuff is bootstrapped by xamarin-android

    *   build of mono

        *   4 ABIs

            *   armeabi-v7a

            *   arm64-v8a

            *   x86

            *   x86_64

        *   2 platforms

            *   Windows

            *   MacOSX

        *   2 configurations

            *   Debug

            *   Release

        *   12 builds of mono??

        *   caching builds - downloading zip bundle with builds

```
msbuild Xamarin.Android.sln /t:prepare
```

```
make preapre
```

```
msbuild Xamarin.Android.sln

```
