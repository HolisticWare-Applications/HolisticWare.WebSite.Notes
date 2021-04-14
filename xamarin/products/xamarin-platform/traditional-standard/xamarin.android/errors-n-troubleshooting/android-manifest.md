# AndroidManifest


android-manifest.md

## Problem

MSAL bindings method called that should open browser and authenticate

Method `SignIn` was never called

```
```

## [Re]Solution / Workaround

Internet permissions


## Notes

```

```

MSAL Client library depends on MSAL Common and in MSAL Common there is 

```
com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity
```

which can be seen when I run java app:

```
2021-02-22 12:46:31.722 1890-3600/? I/ActivityManager: START u0 {flg=0x10000000 cmp=com.azuresamples.msalandroidapp/com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity (has extras)} from uid 10097
2021-02-22 12:46:31.735 3756-3756/com.azuresamples.msalandroidapp W/ActivityThread: handleWindowVisibility: no activity for token android.os.BinderProxy@575caa6
2021-02-22 12:46:31.759 1890-3605/? I/ActivityManager: START u0 {act=android.intent.action.VIEW dat=https://login.microsoftonline.com/... pkg=com.android.chrome cmp=com.android.chrome/com.google.android.apps.chrome.IntentDispatcher (has extras)} from uid 10097
````

but not in simple C# test case (app)

Now, building app with both bindings as project references (MSAL Client and MSAL Common)  looks like 
AndroidManifest.xml is not merged - com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity 
is not in the manifest.



are you using the manifestmerger setting?
moljacToday at 11:22 AM
No. isn't that by default?
Commander Jayne GreyToday at 11:22 AM
it does a better job of merging manifests than our own code
let me check
moljacToday at 11:23 AM
this is what I thought... Dreamt last night
Commander Jayne GreyToday at 11:23 AM
its not
try adding <AndroidManifestMerger>manifestmerger.jar</AndroidManifestMerger>
see if that helps
moljacToday at 11:24 AM
OK. I see. Thanks
So if I have transitive ProjectReferences do I have to add that option to "middle" project too?
So App => Client lib => Common lib
Should I put it in Client lib too?
adding/testing
Commander Jayne GreyToday at 11:25 AM
The manifest merger only runs in the app project, it doesn't do anything in library projects
also does AuthorizationActivity appear in any  of the AndroidManifest.xml for the MSAL Client/Common stuff?
or does it have the Activity attribute in the c# code (assuming MSAL Client is C# and not java)



so if they want it to be auto added the activity in the binding will need an Activity attrbriute on it I think. That way an entry should be generated.
if not, then it will either need to be in the manifest that ships with the library. or documented that the user will need to add it manually.
moljacToday at 11:44 AM
https://gist.github.com/moljac/63b55ed18a64e116087860c6d009c6f1
AuthorizationActivity
is from Common (bottom file)
appears in Client (midddle)
but not in App1 Manifest
though I added Manifestmerger
let me try manually adding it
Commander Jayne GreyToday at 11:47 AM
can you take a look at what is in your app's obj/Debug/lp/ directory. There is a map.cache file which will tell you which subdirectory each assembly is. From there you can figure out if the AndroidManifest.xml from the bindings are making it into the intermediate directory.
I suspect they are not being included for some reason.
moljacToday at 12:00 PM
map.cache 1st part:
Microsoft.Identity.Client.dll
Microsoft.Identity.Common.dll
Xamarin.AndroidX.Activity.dll
Xamarin.AndroidX.Annotation.dll
Xamarin.AndroidX.Annotation.Experimental.dll
Xamarin.AndroidX.AppCompat.AppCompatResources.dll
Xamarin.AndroidX.AppCompat.dll
Xamarin.AndroidX.Arch.Core.Common.dll
Xamarin.AndroidX.Arch.Core.Runtime.dll
Xamarin.AndroidX.Browser.dll
Xamarin.AndroidX.CardView.dll
Xamarin.AndroidX.Collection.dll
Xamarin.AndroidX.ConstraintLayout.dll
Xamarin.AndroidX.ConstraintLayout.Solver.dll
Xamarin.AndroidX.CoordinatorLayout.dll
Xamarin.AndroidX.Core.dll
Xamarin.AndroidX.CursorAdapter.dll
Xamarin.AndroidX.CustomView.dll
Xamarin.AndroidX.DrawerLayout.dll
Xamarin.AndroidX.Fragment.dll
Xamarin.AndroidX.Interpolator.dll
Xamarin.AndroidX.Lifecycle.Common.dll
Xamarin.AndroidX.Lifecycle.LiveData.Core.dll
Xamarin.AndroidX.Lifecycle.LiveData.dll
Xamarin.AndroidX.Lifecycle.Runtime.dll
Xamarin.AndroidX.Lifecycle.ViewModel.dll
Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll
Xamarin.AndroidX.Loader.dll
Xamarin.AndroidX.MultiDex.dll
Xamarin.AndroidX.RecyclerView.dll
Xamarin.AndroidX.SavedState.dll
Xamarin.AndroidX.Transition.dll
Xamarin.AndroidX.VectorDrawable.Animated.dll
Xamarin.AndroidX.VectorDrawable.dll
Xamarin.AndroidX.VersionedParcelable.dll
Xamarin.AndroidX.ViewPager.dll
Xamarin.AndroidX.ViewPager2.dll
Xamarin.Essentials.dll
Xamarin.Google.Android.Material.dll
Xamarin.Google.Guava.ListenableFuture.dll
2nd part
androidx.versionedparcelable.versionedparcelable.aar
androidx.lifecycle.lifecycle-runtime.aar
androidx.core.core.aar
androidx.customview.customview.aar
androidx.viewpager.viewpager.aar
androidx.savedstate.savedstate.aar
androidx.recyclerview.recyclerview.aar
androidx.lifecycle.lifecycle-viewmodel.aar
androidx.arch.core.core-runtime.aar
androidx.lifecycle.lifecycle-livedata-core.aar
androidx.loader.loader.aar
androidx.lifecycle.lifecycle-viewmodel-savedstate.aar
androidx.activity.activity.aar
androidx.fragment.fragment.aar
androidx.viewpager2.viewpager2.aar
androidx.vectordrawable.vectordrawable.aar
androidx.interpolator.interpolator.aar
androidx.vectordrawable.vectordrawable-animated.aar
androidx.transition.transition.aar
androidx.drawerlayout.drawerlayout.aar
androidx.cursoradapter.cursoradapter.aar
androidx.coordinatorlayout.coordinatorlayout.aar
androidx.cardview.cardview.aar
androidx.appcompat.appcompat-resources.aar
androidx.appcompat.appcompat.aar
androidx.annotation.annotation-experimental.aar
com.google.android.material.material.aar
androidx.browser.browser.aar
androidx.lifecycle.lifecycle-livedata.aar
androidx.constraintlayout.constraintlayout.aar






yup so its 0 based. So Microsoft.Identity.Client.dll stuff will be in the 0 subdirectory
moljacToday at 12:00 PM
OK and it is in that manifest
Commander Jayne GreyToday at 12:01 PM
ok same for 1 which will be the Common one
so next thing is to check the logs to see what files are passed to the ManifestMerger task
out of interest where is the manifest file in the 0 and 1 directories? i.e which subdirectories are they in?
moljacToday at 12:03 PM
tree samples/Bogdan.TestApp/obj/Debug/lp/0/jl
samples/Bogdan.TestApp/obj/Debug/lp/0/jl
├── AndroidManifest.xml
├── META-INF
│   └── com
│       └── android
│           └── build
│               └── gradle
│                   └── aar-metadata.properties
├── R.txt
├── __reference__gson-2.8.6.jar
├── __reference__nimbus-jose-jwt-9.1.2.jar
├── bin
│   ├── AndroidManifest.xml
│   ├── R.txt
│   ├── classes.jar
│   ├── proguard.txt
│   └── public.txt
├── files.cache
├── flat
│   ├── layout_broker_helper.xml.flat
│   ├── layout_http_auth_dialog.xml.flat
│   ├── raw_msal_default_config.json.flat
│   ├── raw_msal_ppe_default_config.json.flat
│   └── values_values.arsc.flat
├── proguard.txt
├── public.txt
└── res
    ├── layout
    │   ├── broker_helper.xml
    │   └── http_auth_dialog.xml
    ├── raw
    │   ├── msal_default_config.json
    │   └── msal_ppe_default_config.json
    └── values
        └── values.xml
tree samples/Bogdan.TestApp/obj/Debug/lp/1/jl 
samples/Bogdan.TestApp/obj/Debug/lp/1/jl
├── AndroidManifest.xml
├── META-INF
│   └── com
│       └── android
│           └── build
│               └── gradle
│                   └── aar-metadata.properties
├── R.txt
├── __reference__gson-2.8.6.jar
├── __reference__nimbus-jose-jwt-9.1.2.jar
├── bin
│   ├── AndroidManifest.xml
│   ├── R.txt
│   ├── classes.jar
│   └── proguard.txt
├── files.cache
├── flat
│   ├── layout_common_activity_authentication.xml.flat
│   ├── layout_dual_screen_layout.xml.flat
│   ├── layout_http_auth_dialog.xml.flat
│   └── values_values.arsc.flat
├── proguard.txt
└── res
    ├── layout
    │   ├── common_activity_authentication.xml
    │   ├── dual_screen_layout.xml
    │   └── http_auth_dialog.xml
    └── values
        └── values.xml
seems ok
Commander Jayne GreyToday at 12:05 PM
ok that looks ok. samples/Bogdan.TestApp/obj/Debug/lp/1/jl/AndroidManifest.xml should be picked up
so we now need to check if the ManifestMerger task got those files.
moljacToday at 12:05 PM
How do you inspect binlogs on mac?
Commander Jayne GreyToday at 12:06 PM
https://live.msbuildlog.com/ :slight_smile:
did you want to send over the binlogs as well. I'll take a look too
alternatively you can do this msbuild foo.binlog /v:diag
that will dump the output to the console
moljacToday at 12:09 PM
Attachment file type: unknown
foo.binlog
1.50 MB
If I have Directory.Build.rsp where solution is. Can I specify binlog per project?
Or do I need Directory.Build.rsp for each csproj (in the folder)??
Commander Jayne GreyToday at 12:11 PM
I have no idea lol
hmm interesting , they are not in the list of files passed to manifest merger
LibraryManifestFiles=
          obj/Debug/lp/61/jl/AndroidManifest.xml
          obj/Debug/lp/59/jl/AndroidManifest.xml
          obj/Debug/lp/66/jl/AndroidManifest.xml
          obj/Debug/lp/50/jl/AndroidManifest.xml
          obj/Debug/lp/68/jl/AndroidManifest.xml
          obj/Debug/lp/57/jl/AndroidManifest.xml
          obj/Debug/lp/69/jl/AndroidManifest.xml
          obj/Debug/lp/56/jl/AndroidManifest.xml
          obj/Debug/lp/51/jl/AndroidManifest.xml
          obj/Debug/lp/58/jl/AndroidManifest.xml
          obj/Debug/lp/67/jl/AndroidManifest.xml
          obj/Debug/lp/60/jl/AndroidManifest.xml
          obj/Debug/lp/0/jl/AndroidManifest.xml
          obj/Debug/lp/42/jl/AndroidManifest.xml
          obj/Debug/lp/45/jl/AndroidManifest.xml
          obj/Debug/lp/1/jl/AndroidManifest.xml
          obj/Debug/lp/44/jl/AndroidManifest.xml
          obj/Debug/lp/43/jl/AndroidManifest.xml
          obj/Debug/lp/65/jl/AndroidManifest.xml
          obj/Debug/lp/62/jl/AndroidManifest.xml
          obj/Debug/lp/54/jl/AndroidManifest.xml
          obj/Debug/lp/53/jl/AndroidManifest.xml
          obj/Debug/lp/52/jl/AndroidManifest.xml
          obj/Debug/lp/55/jl/AndroidManifest.xml
          obj/Debug/lp/63/jl/AndroidManifest.xml
          obj/Debug/lp/64/jl/AndroidManifest.xml
          obj/Debug/lp/46/jl/AndroidManifest.xml
          obj/Debug/lp/41/jl/AndroidManifest.xml
          obj/Debug/lp/48/jl/AndroidManifest.xml
          obj/Debug/lp/49/jl/AndroidManifest.xml
          obj/Debug/lp/40/jl/AndroidManifest.xml
          obj/Debug/lp/47/jl/AndroidManifest.xml
Attachment file type: document
message.txt
2.53 KB
actualy it is
obj/Debug/lp/0/jl/AndroidManifest.xml
hmm
can you check the contents of obj/Debug/android/AndroidManifest.xml
or was that in the gist you sent?



hmm really weird. It seems that manifestmerger.jar is ignoring them
moljacToday at 12:31 PM
updated gist
https://gist.github.com/moljac/63b55ed18a64e116087860c6d009c6f1
last 2 are with and without activity added to app manifest
Commander Jayne GreyToday at 12:33 PM
note there are two AndroidManifest.xml files in the obj/Debug directory. One in the root of obj/Debug this is used as an Input file to the manifest merger. The final app AndroidManifest.xml will be in obj/Debug/android/AndroidManiefst.xml that is the one which will end up in the apk
for some reason it looks like manifestmerger is just not merging those manifest files in... which is really weird
but I'm not seeing any warning or errors from manifestmerger
moljacToday at 12:35 PM
No. It is in the
samples/Bogdan.TestApp/obj/Debug/android/AndroidManifest.xml
let me nuke and rebuild
It is in
samples/Bogdan.TestApp/obj/Debug/android/AndroidManifest.xml
Commander Jayne GreyToday at 12:39 PM
is that without you adding it manually to the main Manifest in Properties/AndroidManifest.xml ?
moljacToday at 12:41 PM
yes. I commented it out and that commented out part is in there...
Why aren't comments removed for deployment? 
I am thinking of app size
Commander Jayne GreyToday at 12:41 PM
The manifest is compiled by aapt2, I think it removes the comments
moljacToday at 12:41 PM
oh. I see
Thanks
Now I need to dig deeper


It is there. The call is not entering bindings - launching that Activity
Not sure why
Commander Jayne GreyToday at 12:43 PM
ok, so the next thing is to check to see if the Java code being generated for the C# binding is in obj/Debug/android/src
moljacToday at 12:44 PM
tons
Commander Jayne GreyToday at 12:44 PM
actually. The activity is java isn't it? not C#
moljacToday at 12:44 PM
yes
Commander Jayne GreyToday at 12:45 PM
ok so there won't be an code for that in obj/Debug/android/src
moljacToday at 12:45 PM
right
sec
Commander Jayne GreyToday at 12:45 PM
so next thing then is to check the classes.dex and see if the activty is in there
you can use dexdump to get that. It will be in your sdk directory somewhere.. built-tools I think
moljacToday at 12:49 PM
Just to give you more context
This is the call that should open browser for login (Similar to Xamarin.Auth)
https://github.com/moljac/microsoft-authentication-library-for-dotnet/blob/bogavril/MergeSampleApps/samples/Bogdan.TestApp/MainActivity.cs#L119-L126
I see logs managed and logcat
https://github.com/moljac/microsoft-authentication-library-for-dotnet/blob/bogavril/MergeSampleApps/samples/Bogdan.TestApp/MainActivity.cs#L395-L403
but nothing happens. No excpetion nothing





is maybe intent missing?
maybe some async on Android side?
async crash or problem?
Commander Jayne GreyToday at 12:53 PM
where is SingleAccountPublicClientApplication defined? I'd like to look at the code
moljacToday at 12:54 PM
bindings
Commander Jayne GreyToday at 12:54 PM
so its a java type?
that you bind
moljacToday at 12:56 PM
yes
I even removed the code with metadata and copied over to additions so I can add some logging
https://github.com/moljac/microsoft-authentication-library-for-dotnet/tree/bogavril/MergeSampleApps/src/bindings/Microsoft.Identity.Client.XamarinAndroid.AndroidX/Additions

removal of that method
https://github.com/moljac/microsoft-authentication-library-for-dotnet/blob/bogavril/MergeSampleApps/src/bindings/Microsoft.Identity.Client.XamarinAndroid.AndroidX/Transforms/Metadata.xml#L42-L57
Commander Jayne GreyToday at 12:56 PM
so you know where the java code is?
moljacToday at 12:57 PM
original java library? yes
sec
Commander Jayne GreyToday at 12:58 PM
oh so its hand written bindings https://github.com/moljac/microsoft-authentication-library-for-dotnet/blob/bogavril/MergeSampleApps/src/bindings/Microsoft.Identity.Client.XamarinAndroid.AndroidX/Additions/SingleAccountPublicClientApplication.cs#L95


Library
https://github.com/AzureAD/microsoft-authentication-library-for-android
Sample
https://github.com/Azure-Samples/ms-identity-android-java


do you see this line in the device log Android.Util.Log.Info("MSAL", "SingleAccountPublicClientApplication.SignIn");
moljacToday at 1:00 PM
No. It is kinda handwritten.
I did remove-node and copied to add this logging to see why does it not cross the boundary...

you might have to put some logging in the java side of that SignIn method to see if its being called and what its doing
moljacToday at 2:28 PM
OK
Commander Jayne GreyToday at 2:31 PM
I see these kinds of files in the java repo https://github.com/AzureAD/microsoft-authentication-library-for-android/blob/6999c4d2a54951b70d03706a775ec7b18fc5098a/msal/src/androidTest/res/raw/test_pcaconfig_b2c.json do you need something like that I wonder..

those are not needed for simple login
Commander Jayne GreyToday at 2:32 PM
ah ok
so I think logging is you best bet. Or do a java app which uses the same api and see if that works
moljacToday at 2:36 PM
Or do a java app which uses the same api and see if that works
I did and it works (opens the Activity)
Commander Jayne GreyToday at 2:37 PM
ok so that suggests there is something wrong with that binding code somehow...
did you check the classes.dex and confirm the java class you need is in there?
moljacToday at 2:38 PM
not yet.
Commander Jayne GreyToday at 2:38 PM
I'm wondering if its being linked out by r8 or d8 somehow...
but I'm sure that would produce a runtime error


exactly

We have Application class
[Application]
public class MyApplication : Application
{
    public MyApplication(IntPtr handle, JniHandleOwnership ownerShip) : base(handle, ownerShip)
    {
    }
}

and attribute generates AndroidManifest.xml code
They have several Application classes and I wonder if they need some "registration" in manifests
Commander Jayne GreyToday at 2:42 PM
compare the final manifest for the java test app you did, see if anything is missing, there will be differences but perhaps there might be something obvious
moljacToday at 2:50 PM
Found it.
Commander Jayne GreyToday at 2:51 PM
cool, what was it?
moljacToday at 2:51 PM
sec
THey didn't put Internet permission into the app.

