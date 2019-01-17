# Error executing task CheckDuplicateJavaLibraries

error-executing-task -checkduplicatejavalibraries.md

## Problem

	/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets: 
	Error: 
	Error executing task CheckDuplicateJavaLibraries: 
	Could not find file 
    'obj\Debug\__library_projects__\OkHttp\library_project_imports\okhttp-2.3.0-jar-with-dependencies.jar'. 
	(Xamarin.Auth.XamarinAndroid)

## [Re]Solution / Workaround

1.	Delete bin/ and obj/ folders in the project  		
	In the sample: (Xamarin.Auth.XamarinAndroid)		
	
		