# Error executing task DetectSigningIdentity - Directory Provisioning Profiles not found

	Error executing task DetectSigningIdentity: 
	Directory 
		'/Users/user/Library/MobileDevice/Provisioning Profiles' 
	not found.

The solution was to remove the entitlements file so that it does not look for 
provisioning profiles. In my case, I believe that entitlements file contained 
a key that was problematic when referencing it on my dev machine. Once I deleted 
the Entitlements setting in the Custom Entitlements section 
( Options->iOS Bundle Signing->Custom Entitlements) , I was able to build and 
run the application.

https://forums.xamarin.com/discussion/comment/117465#Comment_117465


	Xamarin.iOS.Common.targets: error : 
	Error executing task DetectSigningIdentity: 
	Directory 
		'/Users/user/Library/MobileDevice/Provisioning Profiles' 
	not found.
