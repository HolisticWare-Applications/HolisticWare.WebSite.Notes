# Xamarin.Android Binding Native c/c++ Libraries

*	PInvoke - Platform invoke
	*	[DllImport]

http://forums.xamarin.com/discussion/9562/reusing-c-dll

larrygug      microsoft.com


	
http://developer.xamarin.com/guides/android/advanced_topics/using_native_libraries/
http://forums.xamarin.com/discussion/6088/loading-native-library
https://forums.xamarin.com/discussion/28874/someone-can-help-me-using-opencv-in-android
https://www.youtube.com/watch?v=pFv_1KeMZVs&feature=youtu.be
https://forums.xamarin.com/discussion/23727/native-libraries-support
https://forums.xamarin.com/discussion/5638/p-invoke-declaration-for-vector

Step 1: Create a new folder inside the Xamarin.Android project called lib and sub-folder armeabi. 
Copied my .so library to be used inside the armeabi folder as stated here

Step 2: Set the properties of the library.so (imported library) Build action to "AndroidNativeLibrary" 
and Copy to output to "Always Copy".

Step 3: (Working in Xamarin.Android Class eg: MainActivity.cs)

Include the namespace InteropServices by “using System.Runtime.InteropServices;”

Use the standard DllImport in the project to import the native library as below: 
[DllImport("MyTest.so")] public extern static int MyTest_GetValue();// with exact 
Functtion Name, Type & Params in the .so Lib.

Step 4: Consume the function above (MyTest_GetValue()) in the application.

For Example:







https://forums.xamarin.com/discussion/23727/native-libraries-support
http://forums.xamarin.com/discussion/325/native-library-integration
