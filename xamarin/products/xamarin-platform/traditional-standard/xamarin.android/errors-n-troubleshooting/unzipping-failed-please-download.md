# Unzipping failed. Please download

unzipping-failed-please-download.md

## Problem

Errors:

	/Projects/Xamarin/Xamarin.Auth.Collections/source/source/Xamarin.Auth-Library-MacOSX-Xamarin.Studio.sln (Build) ->
	(Build target) ->
	/Projects/Xamarin/Xamarin.Auth.Collections/source/source/XamarinForms/Xamarin.Auth.XamarinForms.Droid/Xamarin.Auth.XamarinForms.Droid.csproj (default targets) ->
	/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets (_BuildAdditionalResourcesCache target) ->

		: error XA5209: Unzipping failed. Please download https://dl-ssl.google.com/android/repository/android_m2repository_r29.zip and extract it to the /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v4/23.3.0.0/content directory.
		: error XA5209: Reason: File /Users/moljac/.local/share/Xamarin/zips/2A3A8A6D6826EF6CC653030E7D695C41.zip is not a ZIP archive
		: error XA5207: Please install package: 'Xamarin.Android.Support.v4' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v4/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.v4' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v4/23.3.0.0/content/libs/internal_impl-23.3.0.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.v4' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v4/23.3.0.0/content/. doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.v7.CardView' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.CardView/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.v7.CardView' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.CardView/23.3.0.0/content/. doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.v7.RecyclerView' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.RecyclerView/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.v7.RecyclerView' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.RecyclerView/23.3.0.0/content/. doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.Vector.Drawable' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.Vector.Drawable/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.Vector.Drawable' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.Vector.Drawable/23.3.0.0/content/. doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.Animated.Vector.Drawable' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.Animated.Vector.Drawable/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.Animated.Vector.Drawable' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.Animated.Vector.Drawable/23.3.0.0/content/. doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.v7.AppCompat' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.AppCompat/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.v7.AppCompat' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.AppCompat/23.3.0.0/content/. doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.Design' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.Design/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.Design' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.Design/23.3.0.0/content/. doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.v7.MediaRouter' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.MediaRouter/23.3.0.0/content/classes.jar doesn't exist.
		: error XA5207: Please install package: 'Xamarin.Android.Support.v7.MediaRouter' available in SDK installer. Java library file /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.MediaRouter/23.3.0.0/content/libs/internal_impl-23.3.0.jar doesn't exist.
		: error XA5206: Please install package: 'Xamarin.Android.Support.v7.MediaRouter' available in SDK installer. Android resource directory /Users/moljac/.local/share/Xamarin/Xamarin.Android.Support.v7.MediaRouter/23.3.0.0/content/. doesn't exist.

		 21 Warning(s)
		 20 Error(s)

	Time Elapsed 00:00:11.7608910
	An error occured when executing task 'libs-macosx'.
	Error: Cake.Core.CakeException: XBuild: Process returned an error (exit code 1).
	  at Cake.Core.Tooling.Tool`1[TSettings].ProcessExitCode (System.Int32 exitCode) [0x00031] in <2badc9d0bd034030b74e35b7275d4dcd>:0 
	  at Cake.Core.Tooling.Tool`1[TSettings].Run (TSettings settings, Cake.Core.IO.ProcessArgumentBuilder arguments, Cake.Core.IO.ProcessSettings processSettings, System.Action`1[T] postAction) [0x000b5] in <2badc9d0bd034030b74e35b7275d4dcd>:0 
	  at Cake.Core.Tooling.Tool`1[TSettings].Run (TSettings settings, Cake.Core.IO.ProcessArgumentBuilder arguments) [0x00000] in <2badc9d0bd034030b74e35b7275d4dcd>:0 
	  at Cake.Common.Tools.XBuild.XBuildRunner.Run (Cake.Core.IO.FilePath solution, Cake.Common.Tools.XBuild.XBuildSettings settings) [0x0000a] in <281e4694efc345819a799f942557b1e9>:0 
	  at Cake.Common.Tools.XBuild.XBuildAliases.XBuild (Cake.Core.ICakeContext context, Cake.Core.IO.FilePath solution, Cake.Common.Tools.XBuild.XBuildSettings settings) [0x0003a] in <281e4694efc345819a799f942557b1e9>:0 
	  at Cake.Common.Tools.XBuild.XBuildAliases.XBuild (Cake.Core.ICakeContext context, Cake.Core.IO.FilePath solution, System.Action`1[T] configurator) [0x00029] in <281e4694efc345819a799f942557b1e9>:0 
	  at CakeBuildScriptImpl.XBuild (Cake.Core.IO.FilePath solution, System.Action`1[T] configurator) [0x00006] in <ffc3a8e0c6884d41907e674e5ff38d21>:0 
	  at CakeBuildScriptImpl+<Execute>c__AnonStorey0.<>m__4 () [0x00074] in <ffc3a8e0c6884d41907e674e5ff38d21>:0 
	  at Cake.Core.CakeTaskBuilderExtensions+<>c__DisplayClass4.<Does>b__3 (Cake.Core.ICakeContext context) [0x00000] in <2badc9d0bd034030b74e35b7275d4dcd>:0 
	  at Cake.Core.ActionTask.Execute (Cake.Core.ICakeContext context) [0x00016] in <2badc9d0bd034030b74e35b7275d4dcd>:0 
	  at Cake.Core.DefaultExecutionStrategy.Execute (Cake.Core.CakeTask task, Cake.Core.ICakeContext context) [0x00080] in <2badc9d0bd034030b74e35b7275d4dcd>:0 
	  at Cake.Core.CakeEngine.ExecuteTask (Cake.Core.ICakeContext context, Cake.Core.IExecutionStrategy strategy, System.Diagnostics.Stopwatch stopWatch, Cake.Core.CakeTask task, Cake.Core.CakeReport report) [0x00019] in <2badc9d0bd034030b74e35b7275d4dcd>:0 

## Analysis

## [Re]Solution/Workaround
  
rm -fr ~/.local/share/Xamarin/*

