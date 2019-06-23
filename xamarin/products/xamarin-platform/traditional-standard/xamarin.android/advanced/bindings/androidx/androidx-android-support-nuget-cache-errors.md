# Android.Support and AndroidX problems with nuget cache

androidx-android-support-nuget-cache-errors.md

Errors:

```
/Projects/X/XamarinAndroidXMigration/tests/Aarxercise.Managed.AndroidX/MagicType.cs(42,42): 
Error CS0433: 
The type 
    'Space' 
exists in both 
    'Xamarin.AndroidX.Legacy.CoreUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null' 
and 
    'Xamarin.AndroidX.Legacy.Support.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null' 
(CS0433) (Aarxercise.Managed.AndroidX)
```

```
/Projects/X/XamarinAndroidXMigration/tests/Aarxercise.Managed.AndroidX/MagicType.cs(10,10): 
Error CS0433: 
The type 
    'NotificationCompat' 
exists in both 
    'Xamarin.AndroidX.Core.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null' 
and 
    'Xamarin.AndroidX.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null' 
(CS0433) (Aarxercise.Managed.AndroidX)
```

## [Re]Solution / Workaround

Delete nuget cache:

```
rm -fr ~/.nuget/packages/ 
```