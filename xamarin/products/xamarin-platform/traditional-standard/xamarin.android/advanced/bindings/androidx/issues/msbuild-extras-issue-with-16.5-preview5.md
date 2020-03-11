# MSBuild.Extras issue with internal previews (16.5 Preview 5)

msbuild-extras-issue-with-16.5-preview5.md

## Problem

Xamarin.Android TargetFramework dropdowns not populated. Only .NET Core SDKs listed and on Windows
regular frameworks. Unable to set TargetFramework (Project properties) for numerous projects (AndroidX, 
SceneForm in XamarinComponents, etc).

Windows:

![VS4W-2019-16.5.P5-with-markings.png]
	(
	./msbuild-extras-issue-with-16.5-preview5.img/VS4W-2019-16.5.P5-with-markings.png 
	Visual Studio 2019 Windows 16.5 Preview5"
	)

MacOSX:

![Screenshot 2020-03-07 at 21.31.38.png]
	(
	./msbuild-extras-issue-with-16.5-preview5.img/Screenshot 2020-03-07 at 21.31.38.png 
	Visual Studio Mac - Loading projects"
	)

![Screenshot 2020-03-07 at 14.09.55.png]
	(
	./msbuild-extras-issue-with-16.5-preview5.img/Screenshot 2020-03-07 at 14.09.55.png 
	Visual Studio Mac - Target Frameworks"
	)
	
On one of Windows boxes following error:

```
error  : The expression "[System.IO.Path]::GetDirectoryName('')" cannot be evaluated. 
The path is not of a legal form.  
.nuget\packages\msbuild.sdk.extras\2.0.54\Sdk\Sdk.props

https://github.com/Caliburn-Micro/Caliburn.Micro/issues/648

https://github.com/Caliburn-Micro/Caliburn.Micro/issues/648

     .Net Core 3.0.100
```

Search revealed:

*	

On Windows I reinstalled VS4W 2019 16.5 Preview 5, but no use.

Android SDK fully installed both on Mac and Windows.

Platforms/OS affected:

*   Mac (2 macs, mine and community user reported with regular preview, not internal) and 
*   Windows VS4W 2019 16.5 Preview 5

```
=== Visual Studio Enterprise 2019 for Mac (Preview) ===

Version 8.5 Preview (8.5 build 3152)
Installation UUID: 66b62e45-69e5-4d0c-aa10-bb105b21f60b
	GTK+ 2.24.23 (Raleigh theme)
	Xamarin.Mac 6.14.1.39 (d16-5 / 30e8706b4)

	Package version: 608000121

=== Mono Framework MDK ===

Runtime:
	Mono 6.8.0.121 (2019-10/fb4d8f5eb1c) (64-bit)
	Package version: 608000121

=== Roslyn (Language Service) ===

3.5.0-beta4-20125-04+1baa0b3063238ed752ad1f0368b1df6b6901373e

=== NuGet ===

Version: 5.4.0.6315

=== .NET Core SDK ===

SDK: /usr/local/share/dotnet/sdk/3.1.102/Sdks
SDK Versions:
	3.1.102
	3.1.100
	3.1.100-preview3-014645
	3.0.100
	3.0.100-preview9-014004
	3.0.100-preview6-012264
	2.2.203
	2.2.107
	2.1.505
	2.1.302
	2.1.301
	2.1.4
	2.0.0
	1.0.0-preview2-1-003177
	1.0.0-preview2-003121
MSBuild SDKs: /Library/Frameworks/Mono.framework/Versions/6.8.0/lib/mono/msbuild/Current/bin/Sdks

=== .NET Core Runtime ===

Runtime: /usr/local/share/dotnet/dotnet
Runtime Versions:
	3.1.2
	3.1.0
	3.1.0-preview3.19553.2
	3.0.3
	3.0.2
	3.0.0
	3.0.0-preview9-19423-09
	3.0.0-preview6-27804-01
	2.2.5
	2.2.4
	2.2.2
	2.2.1
	2.1.15
	2.1.14
	2.1.13
	2.1.9
	2.1.2
	2.1.1
	2.0.5
	2.0.0
	1.1.0
	1.0.0

=== Xamarin.Profiler ===

Version: 1.6.13.11
Location: /Applications/Xamarin Profiler.app/Contents/MacOS/Xamarin Profiler

=== Updater ===

Version: 11

=== Apple Developer Tools ===

Xcode 11.3.1 (15715)
Build 11C504

=== Xamarin.Mac ===

Version: 6.14.1.39 (Visual Studio Enterprise)
Hash: 30e8706b4
Branch: d16-5
Build date: 2020-02-20 16:41:47-0500

=== Xamarin.iOS ===

Version: 13.14.1.39 (Visual Studio Enterprise)
Hash: 30e8706b4
Branch: d16-5
Build date: 2020-02-20 16:41:48-0500

=== Xamarin.Android ===

Version: 10.2.0.100 (Visual Studio Enterprise)
Commit: xamarin-android/d16-5/988c811
Android SDK: /Users/Shared/Projects/d/system-installed/macosx/sdk
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
SDK Platform Tools Version: 29.0.6
SDK Build Tools Version: 30.0.0 rc1

Build Information: 
Mono: c0c5c78
Java.Interop: xamarin/java.interop/d16-5@fc18c54
ProGuard: xamarin/proguard/master@905836d
SQLite: xamarin/sqlite/3.28.0@46204c4
Xamarin.Android Tools: xamarin/xamarin-android-tools/d16-5@9f4ed4b

=== Microsoft Mobile OpenJDK ===

Java SDK: /Users/Shared/Projects/d/system-installed/macosx/jdk/microsoft_dist_openjdk_8.0.25
1.8.0-25
Android Designer EPL code available here:
https://github.com/xamarin/AndroidDesigner.EPL

=== Android SDK Manager ===

Version: 16.5.0.39
Hash: 6fb4c79
Branch: remotes/origin/d16-5
Build date: 2020-02-21 00:25:56 UTC

=== Android Device Manager ===

Version: 16.5.0.71
Hash: 49194e8
Branch: remotes/origin/d16-5
Build date: 2020-02-21 00:26:18 UTC

=== Xamarin Designer ===

Version: 16.5.0.471
Hash: 35aa4889d
Branch: remotes/origin/d16-5
Build date: 2020-02-25 01:52:08 UTC

=== Xamarin Inspector ===

Version: 1.4.3
Hash: db27525
Branch: 1.4-release
Build date: Mon, 09 Jul 2018 21:20:18 GMT
Client compatibility: 1

=== Build Information ===

Release ID: 805003152
Git revision: 6d4e2cce7b323bc2a7b4990b7bae09aa0d3a23b8
Build date: 2020-03-06 06:28:27-05
Build branch: release-8.5
Xamarin extensions: 6d4e2cce7b323bc2a7b4990b7bae09aa0d3a23b8

=== Operating System ===

Mac OS X 10.15.4
Darwin 19.4.0 Darwin Kernel Version 19.4.0
    Tue Feb 25 22:28:31 PST 2020
    root:xnu-6153.101.5~8/RELEASE_X86_64 x86_64

=== Enabled user installed extensions ===

Meadow 0.6.0
```

VS4mac SOME projects were not loaded (image)

```
<Project Sdk="MSBuild.Sdk.Extras/2.0.54">
  <PropertyGroup>
    <TargetFramework>MonoAndroid81</TargetFramework>
```

Fixed loading and TargetFramework Dropdown was populated with Xamarin.Android targets

```
<Project Sdk="MSBuild.Sdk.Extras/2.0.54">
  <PropertyGroup>
    <TargetFramework>MonoAndroid90</TargetFramework>
```

```
```
