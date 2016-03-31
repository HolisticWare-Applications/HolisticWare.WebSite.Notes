

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