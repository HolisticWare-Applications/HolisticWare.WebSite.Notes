# Error : Could not find android.jar

## Problem

Solution compiles OK in IDE Xamarin.Studio or Visual.Studio, but not with Cake.
Error:

   "U:\Xamarin.Auth\source\source\Xamarin.Auth-Library.sln" 
	(Xamarin_Auth_XamarinAndroid target) (1) ->
	"U:\Xamarin.Auth\source\source\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.XamarinAndroid.csproj" 
	(default target)
       (2) ->
       (_ValidateAndroidPackageProperties target) ->
         C:\Program Files (x86)\MSBuild\Xamarin\Android\Xamarin.Android.Common.targets(475,2): 
		 error : Could not find android.jar for API Level 23. This means the Android SDK platform 
		 for API Level 23 is not installed. Either install it in the Android SDK Manager 
		 (Tools > Open Android SDK Manager...), or change your Xamarin.Android project to target an 
		 API version that is installed. 
		 (/Users/moljac/Library/Developer/Xamarin/android-sdk-macosx\platforms\android-23\android.jar missing.) 
		 [U:\Xamarin.Auth\source\source\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.XamarinAndroid.csproj]


## Analysis

	path mixup? Check output mounted folders and Mac path!!
		 
## [Re]Solution / Workaround

	