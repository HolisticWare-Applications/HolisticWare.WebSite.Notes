# Android.Support NuGet Package Consolidation

android-support-nuget-package-consolitation.md

Following error:

```
~/.nuget/packages/xamarin.android.support.annotations/28.0.0.1/build/monoandroid90/Xamarin.Android.Support.Annotations.targets(3,3): 
Error: Invalid Android Support Library Configuration

All installed Android Support library Nuget Packages must be the exact same version.

The following Xamarin.Android.Support.* packages and versions were detected:

    Xamarin.Android.Support.v7.AppCompat (19.0.2)
    Xamarin.Android.Support.v7.MediaRouter (19.0.2)
    Xamarin.Android.Support.CustomTabs (23.0.1.1)
    Xamarin.Android.Support.Annotations (28.0.0.1)
    Xamarin.Android.Support.AsyncLayoutInflater (28.0.0.1)
    Xamarin.Android.Support.Collections (28.0.0.1)
    Xamarin.Android.Support.Compat (28.0.0.1)
    Xamarin.Android.Support.CoordinaterLayout (28.0.0.1)
    Xamarin.Android.Support.Core.UI (28.0.0.1)
    Xamarin.Android.Support.Core.Utils (28.0.0.1)
    Xamarin.Android.Support.CursorAdapter (28.0.0.1)
    Xamarin.Android.Support.CustomView (28.0.0.1)
    Xamarin.Android.Support.Design (28.0.0.1)
    Xamarin.Android.Support.DocumentFile (28.0.0.1)
    Xamarin.Android.Support.DrawerLayout (28.0.0.1)
    Xamarin.Android.Support.Fragment (28.0.0.1)
    Xamarin.Android.Support.Interpolator (28.0.0.1)
    Xamarin.Android.Support.Loader (28.0.0.1)
    Xamarin.Android.Support.LocalBroadcastManager (28.0.0.1)
    Xamarin.Android.Support.Media.Compat (28.0.0.1)
    Xamarin.Android.Support.Print (28.0.0.1)
    Xamarin.Android.Support.SlidingPaneLayout (28.0.0.1)
    Xamarin.Android.Support.SwipeRefreshLayout (28.0.0.1)
    Xamarin.Android.Support.Transition (28.0.0.1)
    Xamarin.Android.Support.v4 (28.0.0.1)
    Xamarin.Android.Support.v7.CardView (28.0.0.1)
    Xamarin.Android.Support.v7.RecyclerView (28.0.0.1)
    Xamarin.Android.Support.VersionedParcelable (28.0.0.1)
    Xamarin.Android.Support.ViewPager (28.0.0.1)
```

Please install v28.0.0.1 of all Xamarin.Android.Support.* NuGet packages.
 
 ```
    <PackageReference Include="Xamarin.Android.Support.Design" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.CardView" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Essentials" Version="1.1.0" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs">
      <Version>28.0.0.1</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.Android.Support.v4">
      <Version></Version>
    </PackageReference>
```

```
~/.nuget/packages/xamarin.android.support.annotations/28.0.0.1/build/monoandroid90/Xamarin.Android.Support.Annotations.targets(3,3): 

Error: Invalid Android Support Library Configuration

All installed Android Support library Nuget Packages must be the exact same version.

The following Xamarin.Android.Support.* packages and versions were detected:

    Xamarin.Android.Support.v4 (19.0.2)
    Xamarin.Android.Support.CustomTabs (23.0.1.1)
    Xamarin.Android.Support.Animated.Vector.Drawable (28.0.0.1)
    Xamarin.Android.Support.Annotations (28.0.0.1)
    Xamarin.Android.Support.AsyncLayoutInflater (28.0.0.1)
    Xamarin.Android.Support.Collections (28.0.0.1)
    Xamarin.Android.Support.Compat (28.0.0.1)
    Xamarin.Android.Support.CoordinaterLayout (28.0.0.1)
    Xamarin.Android.Support.Core.UI (28.0.0.1)
    Xamarin.Android.Support.Core.Utils (28.0.0.1)
    Xamarin.Android.Support.CursorAdapter (28.0.0.1)
    Xamarin.Android.Support.CustomView (28.0.0.1)
    Xamarin.Android.Support.Design (28.0.0.1)
    Xamarin.Android.Support.DocumentFile (28.0.0.1)
    Xamarin.Android.Support.DrawerLayout (28.0.0.1)
    Xamarin.Android.Support.Fragment (28.0.0.1)
    Xamarin.Android.Support.Interpolator (28.0.0.1)
    Xamarin.Android.Support.Loader (28.0.0.1)
    Xamarin.Android.Support.LocalBroadcastManager (28.0.0.1)
    Xamarin.Android.Support.Print (28.0.0.1)
    Xamarin.Android.Support.SlidingPaneLayout (28.0.0.1)
    Xamarin.Android.Support.SwipeRefreshLayout (28.0.0.1)
    Xamarin.Android.Support.Transition (28.0.0.1)
    Xamarin.Android.Support.v7.AppCompat (28.0.0.1)
    Xamarin.Android.Support.v7.CardView (28.0.0.1)
    Xamarin.Android.Support.v7.RecyclerView (28.0.0.1)
    Xamarin.Android.Support.Vector.Drawable (28.0.0.1)
    Xamarin.Android.Support.VersionedParcelable (28.0.0.1)
    Xamarin.Android.Support.ViewPager (28.0.0.1)

Please install v28.0.0.1 of all Xamarin.Android.Support.* NuGet packages.
```

```
 does not contain an inclusive lower bound. Include a lower bound in the dependency version 
 to ensure consistent restore results.
```

## Workaround/Solution

Uninstall all packages and add them manually.
