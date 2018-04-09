# No resource found that matches the given name 

no-resource-found-that-matches-the-given-name.md

## Problem

New project does not compile:

	Resources/values/styles.xml(0,0): 
	Error APT0000: 
	Error retrieving parent for item: No resource found that matches the given name 
	'Theme.AppCompat.Light.DarkActionBar'. 

## Analysis
	
## [Re]Solution / Workaround

1.	delete/nuke packages/ folder
	Delete nuget packages, this will trigger restoring and update if 
	necessary
2.	compile SDK version must match the support library's major version.
	Since you are using support library v23, you need to compile against 
	Android SDK of v23.
3.	Alternatively it is possible to compile against older Android SDK by
	using appropriate support library.
