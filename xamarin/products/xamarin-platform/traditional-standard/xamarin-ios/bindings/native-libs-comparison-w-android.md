




Alan McGovern	[17:55]  
Quick question - when an iOS library requires a native binary to be included in the build, they add this attribute to their assembly:
```[assembly: LinkWith ("TelerikAppFeedback.a", LinkTarget.Simulator | LinkTarget.ArmV7 | LinkTarget.Arm64 | LinkTarget.Simulator64, ForceLoad = true)]
```
What is the equivalent for Android?

Jonathan Dick	[17:57]  
there’d be a .so you’d include in your `libs/arch/` folder

[17:57]  
and assign it the right build task

[17:58]  
EmbeddedNativeLibrary i think?

Alan McGovern	[17:58]  
but from a `i'm the Android Designer inside Xamarin Studio, how do i detect that the binary i'm going to load in my rendering process will blow up because it's '.jar" or '.so' files have not been loaded` perspective, what should i do (edited)

Jonathan Dick	[17:59]  
LoadLibrary () ?

Alan McGovern	[17:59]  
From the ios designer perspective i can detect this case by checking each assembly to see if there are any assembly level `LinkWith` attributes. If there are we know it'll fail

[17:59]  
I don't want to load the jar/so files :stuck_out_tongue:

[18:00]  
(yet)

Jonathan Dick	[18:00]  
so you’re just trying to _detect_ them?

Alan McGovern	[18:00]  
yes

Jonathan Dick	[18:00]  
i think there may be assembly level attributes

Alan McGovern	[18:00]  
i just want a `bool ThisBinaryUsesNativeJarsOrSosOrWhatever (string pathToAssembly)`

Jonathan Dick	[18:00]  
but of course embedded .aar files can contain them too

Alan McGovern	[18:00]  
or `bool ThisBinaryUsesNativeJarsOrSosOrWhatever (Assembly assembly)`

Jonathan Dick	[18:01]  
trying to think of an example i have that uses .so’s to take a peek

[18:01]  
i think renderscript v8 does

Alan McGovern	[18:02]  
the binary i have has a `__AndroidLibraryProjects__.zip` embedded resource and no assembly level attributes

Jonathan Dick	[18:02]  
`[assembly: NativeLibraryReference ("android-N/renderscript/lib/packaged/armeabi-v7a/librsjni.so", SourceUrl = "http://dl-ssl.google.com/android/repository/build-tools_r24-macosx.zip", Version = "24", PackageName = "Xamarin.Android.Support.v8")]`

[18:02]  
ok yeah so those may have them inside that zip

[18:03]  
and you probably wouldn’t see an assembly attribute telling you so

[18:03]  
if you ran after a build target you could scan the intermediate output

[18:03]  
they

[18:03]  
would end up in there

Alan McGovern	[18:04]  
Is relying on the existence of `__AndroidLibraryProjects__.zip` a good thing to do?

[18:05]  
as my indicator of "this nearly definitely needs more things to be loaded which are not loaded"

Jonathan Dick	[18:05]  
no

[18:05]  
it may or may not have .so's

Alan McGovern	[18:05]  
but it'll have 'more things' ?

Jonathan Dick	[18:05]  
classes.jar at the least

Alan McGovern	[18:05]  
This one has `Chart.jar`

[18:05]  
and if that's not loaded, the charting controls won't work

[18:05]  
(which is the case we're hitting)

Jonathan Dick	[18:06]  
ok yeah so definitely scan inside that zip for jars

[18:06]  
there may be libs/*.jar too inside that

Alan McGovern	[18:06]  
So is it safe to assume that the existence of the zip file means that there will always be *something* additional that is needed at runtime?

Jonathan Dick	[18:06]  
i believe so

Alan McGovern	[18:06]  
cool

Jonathan Dick	[18:07]  
you’ll also have to deal with the case above that i pasted where assembly attributes are used to specify what gets embedded at build time

Alan McGovern	[18:07]  
yup

Jonathan Dick	[18:07]  
although that’s going to be not used in the future for android support and play services

[18:08]  
at which point __AndroidLibraryProjects__.zip will be used, but only in the intermediate directory after a certain build task runs

Alan McGovern	[18:08]  
Do we know what the future will be?

[18:08]  
ah, cool

[18:08]  
perfecto!

Jonathan Dick	[18:08]  
basically before the resgen target runs

Alan McGovern	[18:09]  
I filed it here: https://bugzilla.xamarin.com/show_bug.cgi?id=47865

[18:10]  
Jeremie might be able to enhance the android side of our house to actually load all of the things, but for iOS it is a complex problem

Jonathan Dick	[18:10]  
i’m not sure where you run this at but i think android is a lot easier if you can just scan the right places in obj/
