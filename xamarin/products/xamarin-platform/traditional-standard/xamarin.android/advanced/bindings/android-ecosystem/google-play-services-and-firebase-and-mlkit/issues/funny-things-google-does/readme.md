# 


```
INFO: Renaming Java.Interop.__TypeRegistrations into <ea89f0c5-d188-4b7e-9102-ee4a67311049>__TypeRegistrations
ERROR: Duplicate type 
    Android.Gms.Measurement.AppMeasurement
androidx-migrator: An error occurred: 
    `Duplicate type 
        Android.Gms.Measurement.AppMeasurement 
    from 
        Xamarin.Firebase.Analytics.Impl.dll, 
    was also present in 
        Xamarin.GooglePlayServices.Measurement.Impl
        , Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`.
An error occurred when executing task 'merge'.
Error: One or more errors occurred. (Process androidx-migrator exited with code 1.)
	Process androidx-migrator exited with code 1.
```

DLLs/nugets:

```
Xamarin.Firebase.Analytics.Impl
Xamarin.GooglePlayServices.Measurement.Impl
```

Class

```
Android.Gms.Measurement.AppMeasurement
```

Search:

```
find ./generated -type f -name "Android.Gms.Measurement.AppMeasurement.cs"
```

results in:

```
./generated/com.google.firebase.firebase-analytics-impl/obj/Release/monoandroid90/generated/src/Android.Gms.Measurement.AppMeasurement.cs
./generated/com.google.android.gms.play-services-measurement-impl/obj/Release/monoandroid90/generated/src/Android.Gms.Measurement.AppMeasurement.cs
```