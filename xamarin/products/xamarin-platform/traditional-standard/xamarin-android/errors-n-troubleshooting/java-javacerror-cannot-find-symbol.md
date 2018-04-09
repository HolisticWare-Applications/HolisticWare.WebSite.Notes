# Java javacerror cannot find symbol

java-javacerror-cannot-find-symbol.md

java(23,7):  javacerror :  error: cannot find symbol

## Problem

    obj/Debug/android/src/android/support/customtabs/CustomTabsClient_CustomTabsCallbackImpl.java(23,7):  javacerror :  error: cannot find symbol
    if (getClass () == CustomTabsClient_CustomTabsCallbackImpl.class)
    symbol:   method getClass()
    location: class CustomTabsClient_CustomTabsCallbackImpl

    obj/Debug/android/src/ .java(23,7):  javacerror :  error: cannot find symbol
    if (getClass () == CustomTabsClient_CustomTabsCallbackImpl.class)
    symbol:   method getClass()
    location: class CustomTabsClient_CustomTabsCallbackImpl

## [Re]Solution / Workaround

Add Xamarin.Android.Support.CustomTabs package to the app project


 adding the NuGet package.

A couple of things to check.

The full path to the files it cannot find if you are on a Windows file system cannot be more than 255 characters long
Remove the NuGet package and try adding it again to see if that helps
Make sure you have latest stable version of all the tools
Make sure everything is ok in your Android SDK installation


 was caused by killing VS during the initial build of my first Xamarin project after a reinstall.

It looked as though the process had hung, but apparently it was downloading from google at a slow rate.

Quit Visual studio

Delete / rename c:\Users\username\AppData\Local\Xamarin

Open the solution again

Clean the solution

Compile, wait until it finishes completely.

On Windows, use Resource Monitor to determine if a download is in progress.

MSBuild will be downloading from something.1e100.net.


 this was a corrupt zip download - it was truncated. Because the zip was corrupt, it then didn't extract it and started complaining. Solution? download manually and replace the broken zip file (for me found here: C:\Users[User]\AppData\Local\Xamarin\Android.Support.v4\23.0.1.3)

 