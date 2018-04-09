# Xamarin.Forms Error executing task XamlCTask

xamarin.forms-error-executing-task-xamlctask.md

## Problem

	Xamarin.Forms.2.3.4.231/build/portable-win+net45+wp80+win81+wpa81+MonoAndroid10+Xamarin.iOS10+xamarinmac20/Xamarin.Forms.targets: 
	Error: Error executing task XamlCTask: 
	Operation is not valid due to the current state of the object. 
	(Xamarin.Auth.Forms)

## [Re]Solution / Workaround

1.	Delete bin/ and obj/ folders in the project  		
	In the sample: (Xamarin.Auth.Forms)		
	
	