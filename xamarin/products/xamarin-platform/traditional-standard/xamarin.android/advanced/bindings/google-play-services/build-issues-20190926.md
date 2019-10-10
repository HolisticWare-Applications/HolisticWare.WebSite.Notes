# Builds

build-issues-20190926.md

## local mac 01

builds OK - local

```
Xamarin.Android
Version: 10.0.0.43 (Visual Studio Enterprise)
Commit: xamarin-android/d16-3/8af1ca8
Android SDK: /Projects/system-installed/macosx/sdk
	Supported Android versions:
		4.4    (API level 19)
		4.4.87 (API level 20)
		5.0    (API level 21)
		5.1    (API level 22)
		6.0    (API level 23)
		7.0    (API level 24)
		7.1    (API level 25)
		8.0    (API level 26)
		8.1    (API level 27)

SDK Tools Version: 26.1.1
SDK Platform Tools Version: 29.0.4
SDK Build Tools Version: 29.0.2
```



## local mac 02

builds OK - local

```
Xamarin.Android
Version: 10.0.0.40 (Visual Studio Community)
Commit: xamarin-android/d16-3/080eaac
Android SDK: /Users/moljac/Library/Developer/Xamarin/android-sdk-macosx
	Supported Android versions:
		8.0 (API level 26)
		8.1 (API level 27)

SDK Tools Version: 26.1.1
SDK Platform Tools Version: 29.0.4
SDK Build Tools Version: 29.0.1
```


## local windows 01

builds not OK - local

```
Error		
    java.lang.IllegalArgumentException: already added : 
         Lcom/google/android/gms/internal/ads/zzaaa;	
         FbBuildAll	
```


## Azure DevOps mac 01

```
"/Users/vsts/agent/2.158.0/work/1/s/samples/com.google.firebase/firebase-ads/FirebaseAdmobQuickstart.sln" (Build target) (1) ->
"/Users/vsts/agent/2.158.0/work/1/s/samples/com.google.firebase/firebase-ads/FirebaseAdmobQuickstart/FirebaseAdmobQuickstart.csproj" (default target) (2) ->
(_CompileToDalvikWithDx target) -> 
  /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(2610,3): error MSB6006: "java" exited with code 2. [/Users/vsts/agent/2.158.0/work/1/s/samples/com.google.firebase/firebase-ads/FirebaseAdmobQuickstart/FirebaseAdmobQuickstart.csproj]

```


# Azure DevOps windows 01

builds OK 

```
2019-08-21T16:27:07.9154410Z    Looking for Android NDK...
2019-08-21T16:27:07.9377527Z    Found Xamarin.Android 9.1.7.0
```


# Azure DevOps mac 01

builds OK 

```
2019-08-21T15:56:20.4670950Z _ResolveXamarinAndroidTools:
2019-08-21T15:56:20.4671860Z    Found Xamarin.Android 9.1.8.0
```


# Azure DevOps windows 01

builds not OK 

```
2019-09-24T13:45:29.1930920Z   C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\MSBuild\Xamarin\Android\Xamarin.Android.Common.targets(2610,3): 
error MSB6006: 
	"java.exe" exited with code 2. 
[D:\a\1\s\samples\com.google.firebase\firebase-ads\FirebaseAdmobQuickstart\FirebaseAdmobQuickstart.csproj]

```
```
2019-09-24T13:24:04.4449433Z    Looking for Android NDK...
2019-09-24T13:24:04.4753638Z    Found Xamarin.Android 9.1.7.0
```


# Azure DevOps mac 01

builds not OK 

```
2019-09-24T12:54:10.3726520Z   /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets
error MSB6006: 
	"java" exited with code 2. 
[/Users/vsts/agent/2.158.0/work/1/s/samples/com.google.firebase/firebase-ads/FirebaseAdmobQuickstart/FirebaseAdmobQuickstart.csproj]
```

```
2019-09-24T12:39:21.4412420Z _ResolveXamarinAndroidTools:
2019-09-24T12:39:21.4413780Z    Found Xamarin.Android 9.1.8.0
```


