# Error: Reference to type claims it is defined in assembly

## Problem

Xamarin.Auth samples building:

	Xamarin.Auth.Portable/../Xamarin.Auth.LinkSource/OAuth1Request.cs(36,36): 
	Error CS7069: Reference to type 
		`System.ICloneable' 
	claims it is defined assembly 
		`mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089', 
	but it could not be found (CS7069) (Xamarin.Auth.Portable)
	

## Analysis

Search:

	Error CS7069: Reference to type 
	claims it is defined assembly 
	but it could not be found (CS7069) 

	

## [Re]Solution / Workaround

Nuget package restore problem due to solution locations and relative paths.

Open Xamarin.Auth library first and compile (at least restore nuget packages)

*	Solution	
	*	Clean
	*	Rebuild
	
	
	
