# Xamarin.Android Binding aar files



To bind to an .aar, the build action must be LibraryProjectZip.

http://docs.xamarin.com/releases/android/xamarin.android_4/xamarin.android_4.7/#Xamarin.Android_4.7.10.


I have an existing Android Java application that depends on an .aar. I want to "wrap" this application using Xamarin. So I transformed this application into an .aar, created an "Android Java Bindings Library" project into Xamarin, and added the "application .aar" and the .aar I already had to the Jars folder (with LibraryProjectZip as build action). 
Then I created an "Android Application" project, and added a reference to the first project (the binding one).

I thought everything was ok, but when I tried to compile I had a lot of errors everywhere... (by the way, I posted on stackoverflow about this issue: http://stackoverflow.com/questions/28296658/xamarin-java-binding-library-compiler-error )

So I tried an easier option. I created an android application with a simple activity (extending ActionBarActivity), compiled the project as an .aar and added this .aar to the Jars folder (I also removed the 2 others .aar from my first experiment).

Now the compilation of the binding project works, but the xamarin android application project does not compile when I use any symbol of the library.
I get errors like theses ones :

"TestActivity.cs(8,8): Error CS0246: The type or namespace name `Test' could not be found. Are you missing an assembly reference? (CS0246)"

Obviously if I create a "Test" class in the Additions folder, it will be found, but it won't be merged with the .aar content. It is like if the binding project was not creating the C# classes for the classes of the .aar library. Do I have to write something in the metadata.xml to export symbols, like for the iOS binding projects ?

I tried to compare my projects with a random .aar binding project found on github, and I don't see what differs.

Thanks for your quick help !

PS: I disabled proguard on the build, so I don't think that it is related to the code obfuscation.
 Flag 
JulienCurro
JulienCurro
Julien Curro
February 5 edited February 5
I don't know what happened, but this error is gone.. the api.xml generated was not listing the Test class, but it was in the .jar, so I don't know why it finally worked.

Anyway, I have now another error. Since I have two .aar files, I have two values.xml files in each res/values-*/ folders. Xamarin does not seem to use the values.xml files of the two .arr libraries, it only takes one, so I get a lot of "No resource identifier found ..." errors. Should I rename the values.xml file in one of the .aar ?
 
JulienCurro
JulienCurro
Julien Curro
February 6
I solved the problem by creating one binding project for each .aar file..
 
trying to use this CropImage project's aar in my Xamarin Android bindings project (to be consumed by a normal Xamarin Android project. I apologize if it's a simple fix, this is my first attempt at a binding project

There were originally two issues, the first was repaired by marking the class partial (thanks to the useful error message), but I still can't build because of the following error:

Duplicate 'global::Android.Runtime.Register' attribute \obj\Debug\generated\src\Com.Android.Camera.Gallery.Image.cs

It appears that marking the class partial causes the error because it's attempting to register both parts of the partial class as two separate entities? How should I go about fixing this? You can repo this easily by using the aar yourself as I've made no changes except for marking the class partial.

Here's a screenshot: http://screencast.com/t/IptRwUvJd

Thank you for any time and effort you spend looking into this.
Lance
Tagged: binding project android binding
 Flag 
AllanPead
AllanPead
Allan Pead
April 28 ANSWER ?
Hi Lance

I just built the aar in Android Studio to see what's happening. Looks like you have a name clash.

Adding this to the metadata.xml should do the trick:

<attr path="/api/package[@name='com.android.camera.gallery']/interface[@name='IImage']" name="managedName">IImage</attr>
I haven't tested this fully, but it does build. You are at least one step closer to having a working binding. Will catch you on slack for further discussion on this.

Allan
 
Lancelot
Lancelot
Lance McCarthy
April 28
Thank you Alan, this fixes the duplicate name from the interface problem\




I'm currently working on creating a binding for an SDK that is in the .aar format. I have successfully wrapped the library for Xamarin and began using the binding in a sample project where I noticed a few issues. I noticed that when I tried to launch activities that were included in the SDK I would receive a "Android.Content.ActivityNotFoundException".

I got around this issue by declaring the activity in my sample app's manifest, but I feel like doing this isn't the correct way since they should already be declared by the SDK. Also, I had to declare services, permissions, etc.. that are included in the SDKs manifest in my sample app's manifest. Essentially doing a manual merge between the two.

So, my question is there anyway to have the manifest associated with the SDK and the manifest associated with project consuming the binding to be merged? Or someway for the project consuming the binding to inherit the SDK's manifest properties. Or perhaps this is how the binding works and I have to declare everything in my sample app's manifest. Any feedback on this would be greatly appreciated.

These are the sets I went through to create the binding/sample app:
- Create Android Binding Library Project
- Added SDK .aar file with build action "LibraryProjectZip"
- Included any reference jars with build action "EmbeddedReferenceJar"
- Compiled and fixed any binding errors in "Metadata.xml"
- Created sample app and included binding reference


