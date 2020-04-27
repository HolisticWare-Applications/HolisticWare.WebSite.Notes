# R8 : warning : Missing class: com.google.android.gms.gcm.GcmTaskService

r8-warning-missing-class-com-google-android-gms-gcm-gcmtaskservice.md

Repro steps:

```bash
git clone https://github.com/xamarin/AndroidX.git \
        --branch master_based_updates_202002
cd ./AndroidX/
dotnet cake -t=clean ; dotnet cake -t=ci
```

```
R8 : warning : Missing class: com.google.android.gms.gcm.GcmTaskService 
[/Users/Shared/Projects/d/X/AndroidX-updates_202002/samples/BuildAll/BuildAll/BuildAll.csproj]
R8 : error : Compilation can't be completed because some library classes are missing. 
[/Users/Shared/Projects/d/X/AndroidX-updates_202002/samples/BuildAll/BuildAll/BuildAll.csproj]
```
S

`com.google.android.gms.gcm.GcmTaskService` seems to deprecated:

https://developers.google.com/android/reference/com/google/android/gms/gcm/GcmTaskService

and should be replaced with AndroidX/jetpack WorkManager

https://developer.android.com/topic/libraries/architecture/workmanager



```
find ./samples/BuildAll/ -type f -name *.jar \
    -exec  sh -c "echo {} ; jar tf {} | grep -Hni ColorStateListCacheEntry " \;
```

```
./samples/BuildAll//BuildAll/obj/Release/lp/169/jl/classes.jar
(standard input):1:androidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry.class
.
./samples/BuildAll//BuildAll/obj/Release/lp/118/jl/classes.jar
(standard input):81:androidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry.class

./samples/BuildAll//BuildAll/obj/Debug/lp/109/jl/classes.jar
(standard input):81:androidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry.class
```


```
$ find . -type f -exec grep -Hni "GcmTaskService" {} \;
```

```
./work/workmanager-gcm/src/main/java/androidx/work/impl/background/gcm/WorkManagerGcmService.java:25:import com.google.android.gms.gcm.GcmTaskService;
./work/workmanager-gcm/src/main/java/androidx/work/impl/background/gcm/WorkManagerGcmService.java:29: * The {@link GcmTaskService} responsible for handling requests for executing
./work/workmanager-gcm/src/main/java/androidx/work/impl/background/gcm/WorkManagerGcmService.java:32:public class WorkManagerGcmService extends GcmTaskService {
```

android.googlesource.com


androidx. work:work-gcm:2.2. 0 is a new Maven artifact which supports the use of GCMNetworkManager 
as a scheduler when Google Play Services is available for API levels <= 22. This is an optional dependency that helps with more reliable and performant background processing on older API versions.

