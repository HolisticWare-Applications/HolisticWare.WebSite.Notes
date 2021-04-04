# JAR library references with identical file names but different contents were found

jar-library-references-with-identical-file-names-but-different-contents-were-found.md


AndroidX Artifacts:

```
androidx.room.room-rxjava2
androidx.work.work-rxjava2
androidx.work.work-rxjava3
```

Dependencies

```
io.reactivex.rxjava2.rxjava
io.reactivex.rxjava3.rxjava
```

```
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(762,3): 

error XA1014: 
    JAR library references with identical file names but different contents were found: 
        rxjava.jar. 
    Please remove any conflicting libraries from EmbeddedJar, InputJar and AndroidJavaLibrary. 
    
[/Users/Shared/Projects/d/X/AX/updates-20201212/samples/BuildAll/BuildAll/BuildAll.csproj]
```

```
grep -ril rxjava.jar
```