# Error Visual Studio project loading - numeric comparison was attempted

## Problem

Error when opening Xamarin.IOS project in VS2013

	A numeric comparison was attempted on "$(TargetPlatformVersion)" 
	that evaluates to 
		"10.0.10586.0" 
	instead of a number, in condition 
		"'$(TargetPlatformVersion)' > '8.0'"
		
Search:
		
	A numeric comparison was attempted on "$(TargetPlatformVersion)" 
	that evaluates to 
	instead of a number, in condition 
		"'$(TargetPlatformVersion)' > "		
		
## Analysis
		
## [Re]Solution / Workaround