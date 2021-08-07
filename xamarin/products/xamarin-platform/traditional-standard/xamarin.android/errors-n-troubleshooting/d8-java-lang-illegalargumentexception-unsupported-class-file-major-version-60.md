# D8 java.lang.IllegalArgumentException :  Unsupported class file major version 60

d8-java-lang-illegalargumentexception-unsupported-class-file-major-version-60.md

```
  Using "D8" task from assembly "/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Build.Tasks.dll".
  Task "D8"
      processing ClassesZip, JavaLibrariesToEmbed...
    /Users/moljac/Library/Developer/Xamarin/jdk/microsoft_dist_openjdk_1.8.0.25/bin/java -Xmx1G -classpath /Library/Frameworks/Xamarin.Android.framework/Libraries/xbuild/Xamarin/Android/r8.jar com.android.tools.r8.D8 --debug --min-api 28 --output obj/Debug/android/bin/ --lib /Users/moljac/Library/Developer/Xamarin/android-sdk-macosx/platforms/android-29/android.jar obj/Debug/android/bin/classes.zip /Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v10.0/mono.android.jar /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/java_runtime_fastdev.jar /Users/moljac/.nuget/packages/xamarin.google.guava.listenablefuture/1.0.0.2/buildTransitive/monoandroid50/guava-listenablefuture.jar /Users/moljac/.nuget/packages/xamarin.androidx.annotation/1.2.0/buildTransitive/monoandroid9.0/../../jar/androidx.annotation.annotation.jar /Users/moljac/.nuget/packages/xamarin.androidx.collection/1.1.0.7/buildTransitive/monoandroid9.0/../../jar/androidx.collection.collection.jar /Users/moljac/.nuget/packages/xamarin.androidx.lifecycle.common/2.3.1/buildTransitive/monoandroid9.0/../../jar/androidx.lifecycle.lifecycle-common.jar /Users/moljac/.nuget/packages/xamarin.androidx.arch.core.common/2.1.0.8/buildTransitive/monoandroid9.0/../../jar/androidx.arch.core.core-common.jar /Users/moljac/.nuget/packages/xamarin.androidx.constraintlayout.solver/2.0.4.2/buildTransitive/monoandroid9.0/../../jar/androidx.constraintlayout.constraintlayout-solver.jar obj/Debug/lp/61/jl/classes.jar obj/Debug/lp/59/jl/classes.jar obj/Debug/lp/66/jl/classes.jar obj/Debug/lp/50/jl/classes.jar obj/Debug/lp/68/jl/classes.jar obj/Debug/lp/57/jl/classes.jar obj/Debug/lp/69/jl/classes.jar obj/Debug/lp/56/jl/classes.jar obj/Debug/lp/51/jl/classes.jar obj/Debug/lp/58/jl/classes.jar obj/Debug/lp/67/jl/classes.jar obj/Debug/lp/60/jl/classes.jar obj/Debug/lp/0/jl/LoadAccountsCallback.jar obj/Debug/lp/0/jl/__reference__gson-2.8.6.jar obj/Debug/lp/0/jl/__reference__nimbus-jose-jwt-9.1.2.jar obj/Debug/lp/73/jl/classes.jar obj/Debug/lp/87/jl/classes.jar obj/Debug/lp/80/jl/classes.jar obj/Debug/lp/74/jl/classes.jar obj/Debug/lp/75/jl/classes.jar obj/Debug/lp/81/jl/classes.jar obj/Debug/lp/86/jl/classes.jar obj/Debug/lp/72/jl/classes.jar obj/Debug/lp/65/jl/classes.jar obj/Debug/lp/62/jl/classes.jar obj/Debug/lp/54/jl/classes.jar obj/Debug/lp/53/jl/classes.jar obj/Debug/lp/52/jl/classes.jar obj/Debug/lp/55/jl/classes.jar obj/Debug/lp/63/jl/classes.jar obj/Debug/lp/64/jl/classes.jar obj/Debug/lp/79/jl/classes.jar obj/Debug/lp/83/jl/classes.jar obj/Debug/lp/77/jl/classes.jar obj/Debug/lp/70/jl/classes.jar obj/Debug/lp/84/jl/classes.jar obj/Debug/lp/85/jl/classes.jar obj/Debug/lp/71/jl/classes.jar obj/Debug/lp/76/jl/classes.jar obj/Debug/lp/82/jl/classes.jar obj/Debug/lp/49/jl/classes.jar obj/Debug/lp/78/jl/classes.jar obj/Debug/lp/0/jl/bin/classes.jar obj/Debug/lp/48/jl/bin/classes.jar 
    Error in obj/Debug/lp/0/jl/LoadAccountsCallback.jar:LoadAccountsCallback.class:
    java.lang.IllegalArgumentException: Unsupported class file major version 60
    Compilation failed
    /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.D8.targets(79,5): 
    error : 
    java.lang.IllegalArgumentException :  Unsupported class file major version 60
  Done executing task "D8" -- FAILED.
```


```
  Task "D8"
      processing ClassesZip, JavaLibrariesToEmbed...
    Error in obj/Debug/lp/0/jl/LoadAccountsCallback.jar:LoadAccountsCallback.class:
    java.lang.IllegalArgumentException: Unsupported class file major version 60
    Compilation failed
    /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.D8.targets(79,5): 
    error : 
    java.lang.IllegalArgumentException :  Unsupported class file major version 60
  Done executing task "D8" -- FAILED.
```

```
  Task "D8"
      processing ClassesZip, JavaLibrariesToEmbed...
    Error in 
        obj/Debug/lp/0/jl/LoadAccountsCallback.jar:LoadAccountsCallback.class:
    java.lang.IllegalArgumentException: Unsupported class file major version 60
    Compilation failed
    /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.D8.targets(79,5): 
    error : 
        java.lang.IllegalArgumentException :  Unsupported class file major version 60
  Done executing task "D8" -- FAILED.
```

## [Re]Solution / Workaround

* binaries must be compiled with JDK 8