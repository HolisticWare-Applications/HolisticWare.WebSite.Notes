# AndroidX Errors for samples

androidx-errors-for-samples.md

## Error APT0000: Attribute already defined with incompatible format. 

Following generalized error:

```
Error APT0000: 
Attribute 
already defined with incompatible format. 
(APT0000) 
Error APT0000: 
Original attribute defined here. 
(APT0000) 
```

More specific error (1/24):

```
samples.test.targets/Traditional.Standard/HelloFacebookSample/obj/Debug/lp/32/jl/res/values/values.xml(0,0): 
Error APT0000: 
Attribute 
    "navigationMode" 
already defined with incompatible format. 
(APT0000) 
(HelloFacebookSample)

samples.test.targets/Traditional.Standard/HelloFacebookSample/obj/Debug/lp/97/jl/res/values/values.xml(0,0): 
Error APT0000: 
Original attribute defined here. 
(APT0000) 
(HelloFacebookSample)
```

### [Re]Solution / Workaround

Make sure to use latest TargetFramework (10.0) and turn on `aapt2`:

```
    <TargetFrameworkVersion>v9.0</TargetFrameworkVersion>
    <AndroidUseAapt2>True</AndroidUseAapt2>    
```

## `java.lang.IllegalArgumentException`: already added `<JNIClass>`

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(3,3): 
Error: 
java.lang.IllegalArgumentException: 
already added :  
```

Specific error:

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(3,3): 
Error: 
java.lang.IllegalArgumentException: 
already added :  
    Landroid/support/v4/app/INotificationSideChannel; 
(HelloFacebookSample)
```

```
    /Users/moljac/Library/Developer/Xamarin/jdk/microsoft_dist_openjdk_8.0.25/bin/java -Dfile.encoding=UTF8 -Xmx1G -jar /Users/moljac/Library/Android/sdk/build-tools/27.0.3/lib/dx.jar --dex --no-strict --input-list=/var/folders/xt/ytq9wfqd2y78kx1ks7z36mrr0000gn/T/tmp4ca43b4c.tmp --output obj/Debug/android/bin 
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/app/INotificationSideChannel;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/app/INotificationSideChannel$Stub;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/graphics/drawable/IconCompatParcelizer;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/os/IResultReceiver;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/os/IResultReceiver$Stub;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/os/ResultReceiver;
    Uncaught translation error: java.lang.IllegalArgumentException: already added: Landroid/support/v4/os/ResultReceiver$1;
```