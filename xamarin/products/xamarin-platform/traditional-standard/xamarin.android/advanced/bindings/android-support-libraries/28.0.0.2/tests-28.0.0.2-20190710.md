# Tests 28.0.0.2 2019-07-10

tests-28.0.0.2-20190710.md

Error - minimal:

```
Failed to Read or Deserialize GoogleServicesJson file: google-services.json 
System.IO.FileNotFoundException: 
Could not find file 
    "GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/google-services.json" 
File name: 
    'GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/google-services.json' 
at System.IO.FileStream..ctor (System.String path, System.IO.FileMode mode, System.IO.FileAccess access, System.IO.FileShare share, System.Int32 bufferSize, System.Boolean anonymous, System.IO.FileOptions options) [0x0019e] in <e0b946fd22244e4d97f34cbdc444a145>:0  
at System.IO.FileStream..ctor (System.String path, System.IO.FileMode mode, System.IO.FileAccess access, System.IO.FileShare share) [0x00000] in <e0b946fd22244e4d97f34cbdc444a145>:0  
at (wrapper remoting-invoke-with-check) System.IO.FileStream..ctor(string,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare) 
at System.IO.File.OpenRead (System.String path) [0x00000] in <e0b946fd22244e4d97f34cbdc444a145>:0  
at Xamarin.GooglePlayServices.Tasks.ProcessGoogleServicesJson.Execute () [0x0017f] in <8d9f3b0befba4f599c6e1c796a535af4>:0  
```

Error - full:

```
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
rror : 
Failed to Read or Deserialize GoogleServicesJson file: google-services.json 
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
error : 
System.IO.FileNotFoundException: Could not find file 
"GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/google-services.json" 
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
error : 
File name: 'GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/google-services.json' 
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
error :   
at System.IO.FileStream..ctor (System.String path, System.IO.FileMode mode, System.IO.FileAccess access, System.IO.FileShare share, System.Int32 bufferSize, System.Boolean anonymous, System.IO.FileOptions options) [0x0019e] in <e0b946fd22244e4d97f34cbdc444a145>:0  
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
error :   
at System.IO.FileStream..ctor (System.String path, System.IO.FileMode mode, System.IO.FileAccess access, System.IO.FileShare share) [0x00000] in <e0b946fd22244e4d97f34cbdc444a145>:0  
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
error :   
at (wrapper remoting-invoke-with-check) System.IO.FileStream..ctor(string,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare) 
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
error :   
at System.IO.File.OpenRead (System.String path) [0x00000] in <e0b946fd22244e4d97f34cbdc444a145>:0  
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
~/.nuget/packages/xamarin.googleplayservices.basement/71.1620.0-preview9/build/MonoAndroid90/Xamarin.GooglePlayServices.Basement.targets(63,3): 
error :   
at Xamarin.GooglePlayServices.Tasks.ProcessGoogleServicesJson.Execute () [0x0017f] in <8d9f3b0befba4f599c6e1c796a535af4>:0  
[GPS-FB/samples/com.google.firebase/firebase-perf/Issue228-not_logged/archive_20190702/firebaseperfunoexperiment/firebaseperfunoexperiment.Droid/firebaseperfunoexperiment.Droid.csproj]
```


