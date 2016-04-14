# 

## Problem

Error:


	.csproj : 
	error  : 
	A numeric comparison was attempted on "$(TargetPlatformVersion)" that evaluates to 
	"10.0.10586.0" instead of a number, in condition "'$(TargetPlatformVersion)' > '8.0'".  
	C:\Program Files (x86)\MSBuild\12.0\bin\Microsoft.Common.CurrentVersion.targets


## [Re]Solution / Workaround

Remove following stuff from solution file *.sln

	VisualStudioVersion = 14.0.24720.0
	MinimumVisualStudioVersion = 10.0.40219.1

Tried with comment - NOGO

	#------------------------------------------------------------
	# mc++
	# Helps sometimes for VS2013 error:
	#
	#	.csproj : error  : 
	#	A numeric comparison was attempted on "$(TargetPlatformVersion)" that evaluates to 
	#		"10.0.10586.0" instead of a number, in condition "'$(TargetPlatformVersion)' > '8.0'".  
	#	C:\Program Files (x86)\MSBuild\12.0\bin\Microsoft.Common.CurrentVersion.targets
	#
	#	No Resharper installed
	#	Loading/reloading solutions seems to help??? 
	#	
	# VisualStudioVersion = 12.0.40629.0
	# MinimumVisualStudioVersion = 10.0.40219.1
	#------------------------------------------------------------




