# 

## Problem

Error:


	.csproj : 
	error  : 
	A numeric comparison was attempted on "$(TargetPlatformVersion)" that evaluates to "10.0.10586.0" instead of a number, in condition "'$(TargetPlatformVersion)' > '8.0'".  
	C:\Program Files (x86)\MSBuild\12.0\bin\Microsoft.Common.CurrentVersion.targets


## [Re]Solution / Workaround

Remove following stuff from solution file *.sln

	VisualStudioVersion = 14.0.24720.0
	MinimumVisualStudioVersion = 10.0.40219.1






   "U:\Xamarin.Auth\source\source\Xamarin.Auth-Library.sln" (Xamarin_Auth_XamarinAndroid target) (1) ->
       "U:\Xamarin.Auth\source\source\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.XamarinAndroid.csproj" (default target)
       (2) ->
       (_ValidateAndroidPackageProperties target) ->
         C:\Program Files (x86)\MSBuild\Xamarin\Android\Xamarin.Android.Common.targets(475,2): error : Could not find a
       ndroid.jar for API Level 23. This means the Android SDK platform for API Level 23 is not installed. Either insta
       ll it in the Android SDK Manager (Tools > Open Android SDK Manager...), or change your Xamarin.Android project t
       o target an API version that is installed. (/Users/moljac/Library/Developer/Xamarin/android-sdk-macosx\platforms
       \android-23\android.jar missing.) [U:\Xamarin.Auth\source\source\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.Xamari
       nAndroid.csproj]




