# Android Manifest Merger

android-manifest-merger.md

Used for correct merging of `AndroidManifest.xml` files from different dependencies and main application 
`AndroidManifesr.xml`


Xamarin.Android.ManifestMerger - waiting for feedback from users

Google.Play.Services issues

*   249 

    *   Failed to retrieve Firebase Instance Id

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/249

*   234

    *   `Firebase.Perf` not sending logs. (InstanceID is null) 

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/234

*   216

    *   Conflict when use both packages in same app, 
        Xamarin.Firebase.Messaging 71.1733.0-preview6 - 
        Xamarin.Firebase.Auth 71.1605.0-preview6, 
        FirebaseAuth always null.

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/216

*   223

    *   `FirebaseAuth.Instance` always null in version 71.1605.0-preview7

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/223

    *   1 report OK


*   134

    *   [70.1620.0-preview2] Xamarin.Firebase.Iid.FirebaseInstanceId.Instance returns null 

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/134


*   260

    *   Google Tag Manager (via Firebase) Not Loading 

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/260

NNNNNNNOOOOOOOOVOOOOOO

*   178

    *   Permissions denied when authenticating to Firebase in Xamarin.Android #178

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/178

*   203

    *   Xamarin.GooglePlayServices.Ads.Lite 71.1720.0-preview3: error during build #203

    *   https://github.com/xamarin/GooglePlayServicesComponents/issues/203




## Usage

Errors on Mac:

```
./samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/FirebaseManifestMerging/
EXEC: Error: 
Could not find or load main class com.android.manifmerger.Merger 
(FirebaseManifestMerging)
```

Detailed(2nd error):

```
samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/Xamarin.Android.ManifestMerger.targets(5,5): 
Error 
MSB3073: 
The command
 ""/Projects/system-installed/macosx/jdk/microsoft_dist_openjdk_8.0.25/bin/java" \
` -cp \
`"  /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/common.jar;
    /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/guava.jar;
    /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/kotlin-stdlib-jdk8.jar;
    /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/kotlin-stdlib.jar;
    /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/kxml2.jar;
    /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/manifest-merger.jar;
    /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/sdk-common.jar;
    /Projects/Samples/GPS-FB/samples/issues-bug-repros/com.google.firebase/Issue216-ManifestMerger/packages/Xamarin.Android.ManifestMerger.1.0.0-preview02/build/monoandroid/sdklib.jar" 
    "com.android.manifmerger.Merger" \
    --main "obj/Debug/android/AndroidManifest.xml" \
    --libs \
        "
        obj/Debug/lp/50/jl/AndroidManifest.xml;
        obj/Debug/lp/32/jl/AndroidManifest.xml;
        obj/Debug/lp/35/jl/AndroidManifest.xml;
        obj/Debug/lp/51/jl/AndroidManifest.xml;
        obj/Debug/lp/34/jl/AndroidManifest.xml;
        obj/Debug/lp/33/jl/AndroidManifest.xml;
        obj/Debug/lp/20/jl/AndroidManifest.xml;obj/Debug/lp/18/jl/AndroidManifest.xml;obj/Debug/lp/27/jl/AndroidManifest.xml;obj/Debug/lp/9/jl/AndroidManifest.xml;obj/Debug/lp/11/jl/AndroidManifest.xml;obj/Debug/lp/7/jl/AndroidManifest.xml;obj/Debug/lp/29/jl/AndroidManifest.xml;obj/Debug/lp/16/jl/AndroidManifest.xml;obj/Debug/lp/42/jl/AndroidManifest.xml;obj/Debug/lp/45/jl/AndroidManifest.xml;obj/Debug/lp/6/jl/AndroidManifest.xml;obj/Debug/lp/28/jl/AndroidManifest.xml;obj/Debug/lp/17/jl/AndroidManifest.xml;obj/Debug/lp/1/jl/AndroidManifest.xml;obj/Debug/lp/19/jl/AndroidManifest.xml;obj/Debug/lp/26/jl/AndroidManifest.xml;obj/Debug/lp/21/jl/AndroidManifest.xml;obj/Debug/lp/44/jl/AndroidManifest.xml;obj/Debug/lp/38/jl/AndroidManifest.xml;obj/Debug/lp/36/jl/AndroidManifest.xml;obj/Debug/lp/31/jl/AndroidManifest.xml;obj/Debug/lp/30/jl/AndroidManifest.xml;obj/Debug/lp/37/jl/AndroidManifest.xml;obj/Debug/lp/39/jl/AndroidManifest.xml;obj/Debug/lp/46/jl/AndroidManifest.xml;obj/Debug/lp/41/jl/AndroidManifest.xml;obj/Debug/lp/48/jl/AndroidManifest.xml;obj/Debug/lp/24/jl/AndroidManifest.xml;obj/Debug/lp/23/jl/AndroidManifest.xml;obj/Debug/lp/4/jl/AndroidManifest.xml;obj/Debug/lp/15/jl/AndroidManifest.xml;obj/Debug/lp/3/jl/AndroidManifest.xml;obj/Debug/lp/12/jl/AndroidManifest.xml;obj/Debug/lp/49/jl/AndroidManifest.xml;obj/Debug/lp/40/jl/AndroidManifest.xml;obj/Debug/lp/47/jl/AndroidManifest.xml;obj/Debug/lp/13/jl/AndroidManifest.xml;obj/Debug/lp/5/jl/AndroidManifest.xml;obj/Debug/lp/14/jl/AndroidManifest.xml;obj/Debug/lp/22/jl/AndroidManifest.xml;obj/Debug/lp/25/jl/AndroidManifest.xml" --out "obj/Debug/android/AndroidManifest.xml"" exited with code 1. (MSB3073) (FirebaseManifestMerging)
```