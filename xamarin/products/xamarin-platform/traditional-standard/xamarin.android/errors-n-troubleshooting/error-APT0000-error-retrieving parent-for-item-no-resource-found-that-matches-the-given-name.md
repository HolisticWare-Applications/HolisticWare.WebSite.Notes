# Error APT0000: Error retrieving parent for item No resource found that matches the given name 

error-APT0000-error-retrieving parent-for-item-no-resource-found-that-matches-the-given-name.md

	./Resources/values/styles.xml(0,0): 
	Error APT0000: 
	Error retrieving parent for item: 
	No resource found that matches the given name 'Theme.AppCompat.Light.DarkActionBar'. 
	
	
Compile SDK version must match the support library's major version.


Since you are using support library v23, you need to compile against 
Android SDK of v23.

Alternatively user can continue compiling against v22 of the Android SDK 
by switching to the latest support library v22.



Resolved it using same SDK of Android(API 23 as target API) as App comp 
lib idk version(v23.4).
