# mtouch

## Errors

### error MT0000: Unexpected error System.IO.IOException: Sharing violation on path

*	USB 3 nano drive 
*	for repos (switching between MacOSX and Windows)
*	FAT32 file system
*	create empty app and try to run


	MTOUCH: error MT0000: Unexpected error - Please file a bug report at http://bugzilla.xamarin.com
			System.IO.IOException: Sharing violation on path /Volumes/FAT_REPOS/Xamarin.Auth@moljac@portable-bait-n-switch/samples/Traditional.Standard/references01projects/Xamarin.Auth.Sample.XamarinIOS/obj/iPhoneSimulator/Debug/mtouch-cache/entry-points.txt
			  at System.IO.FileStream..ctor (System.String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, Boolean anonymous, FileOptions options) <0x1097d1d20 + 0x00827> in <filename unknown>:0 
			  at System.IO.FileStream..ctor (System.String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options, System.String msgPath, Boolean bFromProxy, Boolean useLongPath, Boolean checkHost) <0x10bcbfbf0 + 0x00055> in <filename unknown>:0 
			  at (wrapper remoting-invoke-with-check) System.IO.FileStream:.ctor (string,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,int,System.IO.FileOptions,string,bool,bool,bool)
			  at System.IO.StreamWriter.CreateFile (System.String path, Boolean append, Boolean checkHost) <0x10bcbf9d0 + 0x000b4> in <filename unknown>:0 
			  at System.IO.StreamWriter..ctor (System.String path, Boolean append, System.Text.Encoding encoding, Int32 bufferSize, Boolean checkHost) <0x10bcbf810 + 0x0007c> in <filename unknown>:0 
			  at System.IO.StreamWriter..ctor (System.String path, Boolean append, System.Text.Encoding encoding, Int32 bufferSize) <0x10bcbf7b0 + 0x0003d> in <filename unknown>:0 
			  at System.IO.StreamWriter..ctor (System.String path, Boolean append, System.Text.Encoding encoding) <0x10bcc1810 + 0x00033> in <filename unknown>:0 
			  at (wrapper remoting-invoke-with-check) System.IO.StreamWriter:.ctor (string,bool,System.Text.Encoding)
			  at System.IO.File.WriteAllText (System.String path, System.String contents, System.Text.Encoding encoding) <0x10bcc16a0 + 0x00053> in <filename unknown>:0 
			  at System.IO.File.WriteAllText (System.String path, System.String contents) <0x10bcc1650 + 0x00032> in <filename unknown>:0 
			  at MonoTouch.Target.GetRequiredSymbols () <0x10bcc0350 + 0x0029b> in <filename unknown>:0 
			  at MonoTouch.Application+<GetRequiredSymbols>c__Iterator0.MoveNext () <0x10bcbfe10 + 0x001cf> in <filename unknown>:0 
			  at MonoTouch.Application.WriteSymbolList (System.String filename) <0x10bcbf410 + 0x000fd> in <filename unknown>:0 
			  at MonoTouch.Application.StripNativeCode (System.String name) <0x10bcbf240 + 0x00199> in <filename unknown>:0 
			  at MonoTouch.Application.StripNativeCode () <0x10bcbf080 + 0x00159> in <filename unknown>:0 
			  at MonoTouch.Application.Build () <0x10bc2e050 + 0x00143> in <filename unknown>:0 
			  at MTouch.Main2 (System.String[] args) <0x109735b00 + 0x074c7> in <filename unknown>:0 
			  at MTouch.Main (System.String[] args) <0x109686e60 + 0x00069> in <filename unknown>:0 
			Tool /Library/Frameworks/Xamarin.iOS.framework/Versions/Current/bin/mtouch execution finished.
		Task "MTouch" execution -- FAILED
	
	
https://bugzilla.xamarin.com/show_bug.cgi?id=12337

=== Xamarin Studio ===

Version 5.10.1 (build 6)
Installation UUID: 7f42cd6c-f6c2-47c4-960b-ba19ea98bebf
Runtime:
	Mono 4.2.1 (explicit/6dd2d0d)
	GTK+ 2.24.23 (Raleigh theme)

	Package version: 402010102

=== Xamarin.Profiler ===

Version: 0.0.0.0
Location: /Applications/XamarinProfiler.Mac.app/Contents/MacOS/XamarinProfiler.Mac

=== Apple Developer Tools ===

Xcode 7.1.1 (9081)
Build 7B1005

=== Xamarin.iOS ===

Version: 9.4.0.0 (Business Edition)
Hash: 7322991
Branch: master
Build date: 2015-12-08 16:20:29-0500

=== Xamarin.Mac ===

Version: 2.4.0.109 (Business Edition)

=== Xamarin.Android ===

Version: 6.0.0.34 (Business Edition)
Android SDK: /Users/moljac/Library/Developer/Xamarin/android-sdk-macosx
	Supported Android versions:
		2.3    (API level 10)
		4.0.3  (API level 15)
		4.1    (API level 16)
		4.2    (API level 17)
		4.3    (API level 18)
		4.4    (API level 19)
		4.4.87 (API level 20)
		5.0    (API level 21)
		5.1    (API level 22)
		6.0    (API level 23)

SDK Tools Version: 24.4.1
SDK Platform Tools Version: 23.1
SDK Build Tools Version: 23.0.2

Java SDK: /usr
java version "1.7.0_79"
Java(TM) SE Runtime Environment (build 1.7.0_79-b15)
Java HotSpot(TM) 64-Bit Server VM (build 24.79-b02, mixed mode)

=== Xamarin Android Player ===

Not Installed

=== Build Information ===

Release ID: 510010006
Git revision: 0b60eecdb531933734519c13257d16a780274aab
Build date: 2015-12-04 20:28:20-05
Xamarin addins: 9876fd7c9837977178411ec7375b4352c0a0d6af
Build lane: monodevelop-lion-cycle6-baseline

=== Operating System ===

Mac OS X 10.11.2
Darwin mumuco.local 15.2.0 Darwin Kernel Version 15.2.0
    Fri Nov 13 19:56:56 PST 2015
    root:xnu-3248.20.55~2/RELEASE_X86_64 x86_64

	