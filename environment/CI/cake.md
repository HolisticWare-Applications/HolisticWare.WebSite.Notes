

Is there a tutorial how to extend Cake? 
Tutorial topics (if there is no such doc I’m willing to write it, but I’ll need your help):
1. simple function to implement some functionality 
   [DONE]
2. refactoring function to external cake file for reusability 
   referenced with #load or #l
   [DONE]
3. creating class with more functionality (methods, properties) [IN PROGRESS]
Here I need a bit more info which base classes could be used and why. What must be implemented? ICakeContext? Constructors with ICakeContext as parameter?
4. using classes from assembly #reference
5. creating AddIn

Over the weekend I did small sample functionality for a case we have with several StartProcess(“git clone”); and similar commands.
Right now I have method/function Shell(string) that takes multine string of commands and executes those.
So instead of writing bunch of StartProcess calls I just create string with simple commands (no line continuation  and multi commands or control structures ifs, fors - yet).
Now I d like to move it to class with more functionality like MSDOS/Powershell, loading the *.sh or *.bat file


## Nuget v.3 problems





Override default nuget 3 with v.2

Default:

	https://dist.nuget.org/win-x86-commandline/latest/nuget.exe

v.2.x:

	https://dist.nuget.org/win-x86-commandline/v2.8.6/nuget.exe

Script:
		
	rm -fr ./tools/
	rm -fr ./source/source/packages/

	curl -Lsfo build.sh http://cakebuild.net/bootstrapper/osx
	chmod +x build.sh

	mkdir ./tools/
	curl -Lsfo ./tools/nuget.exe \
		https://dist.nuget.org/win-x86-commandline/v2.8.6/nuget.exe
#		https://dist.nuget.org/win-x86-commandline/v3.4.0-rc/nuget.exe	
#	mono ./tools/nuget.exe 
	./build.sh







@redth: I have used default cake bootstrapper. Added 2 liner 







error : Could not find android.jar for API Level 10. This means the 
Android SDK platform for API Level 10 is not installed. 
Either install it in the Android SDK Manager 
(Tools > Open Android SDK Manager...), or change your 
Xamarin.Android project to target an API version that is installed.