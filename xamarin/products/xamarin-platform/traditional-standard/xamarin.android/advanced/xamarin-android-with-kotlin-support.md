# Xamarin.Android with Kotlin support

xamarin-android-with-kotlin-support.md

instructions:

*   dependencies: 

    *   https://github.com/xamarin/xamarin-android/blob/master/Documentation/README.md#building-from-source

*   clone 

    *   https://github.com/xamarin/xamarin-android.git

*   update the java-interop submodule branch to kotlin-support

*   `msbuild Xamarin.Android.sln /t:Prepare`

*   msbuild Xamarin.Android.sln

*   produces ready to run environment

*   usage

    *   build your project with `<path>\bin\Debug\bin\xabuild.exe`

        *   wrapper around msbuild that uses local tree version

