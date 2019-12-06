
# Samples Package Updates Samples

android-support-samples-package-updates-samples.md

for:

*   AndroidX

*   Android.Support

*   Google.PlayServices and Firebase with AndroidX dependencies

*   Google.PlayServices and Firebase with Android.Support dependencies

## Nuget Alignment

```
Xamarin.Android.Support.Annotations.targets(17,3): error : 
Invalid Android Support Library Configuration
error : All installed Android Support library Nuget Packages must be the exact same version.
The following Xamarin.Android.Support.* packages and versions were detected:
```
## Samples

```
Xamarin.Android.Support.v4 (19.0.2)
Xamarin.Android.Support.v7.AppCompat (19.0.2)
Xamarin.Android.Support.v7.MediaRouter (19.0.2)
Xamarin.Android.Support.v7.RecyclerView (21.0.0)
Xamarin.Android.Support.CustomTabs (23.0.1.1)
Xamarin.Android.Support.Annotations (28.0.0.1)
Xamarin.Android.Support.AsyncLayoutInflater (28.0.0.1)
```

Removed all Packages manually from csproj

```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Design" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.Invites" Version="71.1601.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```


Added Invites

```
  <ItemGroup>
    <Reference Include="System" />
    <Reference Include="System.Xml" />
    <Reference Include="System.Core" />
    <Reference Include="Mono.Android" />
    <Reference Include="Xamarin.Android.Support.Annotations">
      <HintPath>..\packages\Xamarin.Android.Support.Annotations.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Annotations.dll</HintPath>
    </Reference>
    <Reference Include="Java.Interop" />
    <Reference Include="Xamarin.Android.Arch.Core.Common">
      <HintPath>..\packages\Xamarin.Android.Arch.Core.Common.1.1.1.1\lib\monoandroid90\Xamarin.Android.Arch.Core.Common.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Arch.Core.Runtime">
      <HintPath>..\packages\Xamarin.Android.Arch.Core.Runtime.1.1.1.1\lib\monoandroid90\Xamarin.Android.Arch.Core.Runtime.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Arch.Lifecycle.Common">
      <HintPath>..\packages\Xamarin.Android.Arch.Lifecycle.Common.1.1.1.1\lib\monoandroid90\Xamarin.Android.Arch.Lifecycle.Common.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Arch.Lifecycle.LiveData.Core">
      <HintPath>..\packages\Xamarin.Android.Arch.Lifecycle.LiveData.Core.1.1.1.1\lib\monoandroid90\Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Arch.Lifecycle.LiveData">
      <HintPath>..\packages\Xamarin.Android.Arch.Lifecycle.LiveData.1.1.1.1\lib\monoandroid90\Xamarin.Android.Arch.Lifecycle.LiveData.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Arch.Lifecycle.Runtime">
      <HintPath>..\packages\Xamarin.Android.Arch.Lifecycle.Runtime.1.1.1.1\lib\monoandroid90\Xamarin.Android.Arch.Lifecycle.Runtime.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Arch.Lifecycle.ViewModel">
      <HintPath>..\packages\Xamarin.Android.Arch.Lifecycle.ViewModel.1.1.1.1\lib\monoandroid90\Xamarin.Android.Arch.Lifecycle.ViewModel.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Collections">
      <HintPath>..\packages\Xamarin.Android.Support.Collections.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Collections.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.CursorAdapter">
      <HintPath>..\packages\Xamarin.Android.Support.CursorAdapter.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.CursorAdapter.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.DocumentFile">
      <HintPath>..\packages\Xamarin.Android.Support.DocumentFile.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.DocumentFile.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Interpolator">
      <HintPath>..\packages\Xamarin.Android.Support.Interpolator.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Interpolator.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.LocalBroadcastManager">
      <HintPath>..\packages\Xamarin.Android.Support.LocalBroadcastManager.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.LocalBroadcastManager.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Print">
      <HintPath>..\packages\Xamarin.Android.Support.Print.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Print.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.VersionedParcelable">
      <HintPath>..\packages\Xamarin.Android.Support.VersionedParcelable.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.VersionedParcelable.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Compat">
      <HintPath>..\packages\Xamarin.Android.Support.Compat.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Compat.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.AsyncLayoutInflater">
      <HintPath>..\packages\Xamarin.Android.Support.AsyncLayoutInflater.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.AsyncLayoutInflater.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.CustomView">
      <HintPath>..\packages\Xamarin.Android.Support.CustomView.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.CustomView.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.CoordinaterLayout">
      <HintPath>..\packages\Xamarin.Android.Support.CoordinaterLayout.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.CoordinaterLayout.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.DrawerLayout">
      <HintPath>..\packages\Xamarin.Android.Support.DrawerLayout.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.DrawerLayout.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Loader">
      <HintPath>..\packages\Xamarin.Android.Support.Loader.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Loader.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Core.Utils">
      <HintPath>..\packages\Xamarin.Android.Support.Core.Utils.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Core.Utils.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Media.Compat">
      <HintPath>..\packages\Xamarin.Android.Support.Media.Compat.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Media.Compat.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.SlidingPaneLayout">
      <HintPath>..\packages\Xamarin.Android.Support.SlidingPaneLayout.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.SlidingPaneLayout.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.SwipeRefreshLayout">
      <HintPath>..\packages\Xamarin.Android.Support.SwipeRefreshLayout.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.SwipeRefreshLayout.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.ViewPager">
      <HintPath>..\packages\Xamarin.Android.Support.ViewPager.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.ViewPager.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Core.UI">
      <HintPath>..\packages\Xamarin.Android.Support.Core.UI.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Core.UI.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.Fragment">
      <HintPath>..\packages\Xamarin.Android.Support.Fragment.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.Fragment.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Android.Support.v4">
      <HintPath>..\packages\Xamarin.Android.Support.v4.28.0.0.1\lib\monoandroid90\Xamarin.Android.Support.v4.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Google.AutoValue.Annotations">
      <HintPath>..\packages\Xamarin.Google.AutoValue.Annotations.1.6.5\lib\monoandroid80\Xamarin.Google.AutoValue.Annotations.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.Basement">
      <HintPath>..\packages\Xamarin.GooglePlayServices.Basement.71.1620.0\lib\monoandroid90\Xamarin.GooglePlayServices.Basement.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Measurement.Connector">
      <HintPath>..\packages\Xamarin.Firebase.Measurement.Connector.71.1701.0\lib\monoandroid90\Xamarin.Firebase.Measurement.Connector.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.Ads.Identifier">
      <HintPath>..\packages\Xamarin.GooglePlayServices.Ads.Identifier.71.1600.0\lib\monoandroid90\Xamarin.GooglePlayServices.Ads.Identifier.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.Measurement.Base">
      <HintPath>..\packages\Xamarin.GooglePlayServices.Measurement.Base.71.1630.0\lib\monoandroid90\Xamarin.GooglePlayServices.Measurement.Base.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.Stats">
      <HintPath>..\packages\Xamarin.GooglePlayServices.Stats.71.1601.0\lib\monoandroid90\Xamarin.GooglePlayServices.Stats.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.Tasks">
      <HintPath>..\packages\Xamarin.GooglePlayServices.Tasks.71.1601.0\lib\monoandroid90\Xamarin.GooglePlayServices.Tasks.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Common">
      <HintPath>..\packages\Xamarin.Firebase.Common.71.1610.0\lib\monoandroid90\Xamarin.Firebase.Common.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.Base">
      <HintPath>..\packages\Xamarin.GooglePlayServices.Base.71.1610.0\lib\monoandroid90\Xamarin.GooglePlayServices.Base.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Dynamic.Links">
      <HintPath>..\packages\Xamarin.Firebase.Dynamic.Links.71.1615.0\lib\monoandroid90\Xamarin.Firebase.Dynamic.Links.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Iid.Interop">
      <HintPath>..\packages\Xamarin.Firebase.Iid.Interop.71.1601.0\lib\monoandroid90\Xamarin.Firebase.Iid.Interop.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Iid">
      <HintPath>..\packages\Xamarin.Firebase.Iid.71.1710.0\lib\monoandroid90\Xamarin.Firebase.Iid.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Analytics.Impl">
      <HintPath>..\packages\Xamarin.Firebase.Analytics.Impl.71.1630.0\lib\monoandroid90\Xamarin.Firebase.Analytics.Impl.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.Measurement.Api">
      <HintPath>..\packages\Xamarin.GooglePlayServices.Measurement.Api.71.1630.0\lib\monoandroid90\Xamarin.GooglePlayServices.Measurement.Api.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Analytics">
      <HintPath>..\packages\Xamarin.Firebase.Analytics.71.1630.0\lib\monoandroid90\Xamarin.Firebase.Analytics.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.GooglePlayServices.AppInvite">
      <HintPath>..\packages\Xamarin.GooglePlayServices.AppInvite.71.1607.0\lib\monoandroid90\Xamarin.GooglePlayServices.AppInvite.dll</HintPath>
    </Reference>
    <Reference Include="Xamarin.Firebase.Invites">
      <HintPath>..\packages\Xamarin.Firebase.Invites.71.1601.0\lib\monoandroid90\Xamarin.Firebase.Invites.dll</HintPath>
    </Reference>
  </ItemGroup>
```


```
/Projects/X/GPS-FB-master/samples/com.google.firebase/firebase-invites/FirebaseInvitesQuickstart/MainActivity.cs(4,4): Error CS0103: The name 'Snackbar' does not exist in the current context (CS0103) (FirebaseInvitesQuickstart)
```

Android.Support.Design





```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.Messaging" Version="71.1740.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```

Xamarin.Android.Support.Design


```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
    <PackageReference Include="Xamarin.Firebase.Analytics">
      <Version>71.1630.0</Version>
    </PackageReference>
```

Xamarin.Android.Support.Design


```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.Auth" Version="71.1605.0" />
    <PackageReference Include="Xamarin.GooglePlayServices.Auth" Version="71.1600.0" />
    <PackageReference Include="Xamarin.GooglePlayServices.Basement" Version="71.1620.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```


Xamarin.Android.Support.Design
Xamarin.GooglePlayServices.Auth



```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.Config" Version="71.1610.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```


Xamarin.Android.Support.Design

removed

```
  <package id="Xamarin.GooglePlayServices.Tasks" version="71.1601.0" targetFramework="monoandroid90" />
```


```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.Storage" Version="71.1602.0" />
    <PackageReference Include="Xamarin.Firebase.Auth" Version="71.1605.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```

```
Xamarin.Android.Support.Design
Xamarin.Firebase.Auth
```

```
samples/com.google.firebase/firebase-storage/packages/
Xamarin.GooglePlayServices.Basement.71.1620.0/build/MonoAndroid90/
Xamarin.GooglePlayServices.Basement.targets(3,3): 
error MSB4062: 
    The "Xamarin.GooglePlayServices.Tasks.ProcessGoogleServicesJson" task could not be loaded from the assembly 
    /Projects/X/GPS-FB-master/samples/com.google.firebase/firebase-storage/packages/Xamarin.GooglePlayServices.Basement.71.1620.0/build/MonoAndroid90/Xamarin.GooglePlayServices.Tasks.dll. Invalid Image Confirm that the <UsingTask> declaration is correct, that the assembly and all its dependencies are available, and that the task contains a public class that implements Microsoft.Build.Framework.ITask. (MSB4062) (FirebaseStorageQuickstart)
```
removed

```
  <package id="Xamarin.GooglePlayServices.Tasks" version="71.1601.0" targetFramework="monoandroid90" />

  <package id="Xamarin.GooglePlayServices.Basement" version="71.1620.0" targetFramework="monoandroid90" />
```








## Firebase Crash

Report to jon

```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.Crash" Version="71.1621.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```

## Firebase Appindexing

```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.AppIndexing" Version="71.1602.0" />
```

Xamarin.Android.Support.Design

/Projects/X/GPS-FB-master/samples/com.google.firebase/firebase-appindexing/AppIndexingSample/obj/Debug/resourcecache/86F720BC415EE4F5EE60E36578986B2F/res/values/attrs.xml(0,0): Error APT0000: resource android:attr/preserveIconSpacing is private. (APT0000) (AppIndexingSample)
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(2,2): Error APT0000: failed linking references. (APT0000) (AppIndexingSample)








```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.Firebase.Ads" Version="71.1601.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```










```
      <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
      <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
      <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
      <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
      <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
      <PackageReference Include="Xamarin.GooglePlayServices.Nearby" Version="71.1600.0" />
      <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```







```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
    <PackageReference Include="Xamarin.GooglePlayServices.Ads">
      <Version>71.1712.0</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.GooglePlayServices.Ads.Lite">
      <Version>71.1712.1</Version>
    </PackageReference>
```







```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Wallet" Version="71.1600.0" />
    <PackageReference Include="Xamarin.GooglePlayServices.Plus" Version="71.1600.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```








```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Vision" Version="71.1702.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```


```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.SafetyNet" Version="71.1600.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```


/Projects/X/GPS-FB-master/samples/com.google.android.gms/play-services-safetynet/SafetyNetSample/obj/Debug/resourcecache/86F720BC415EE4F5EE60E36578986B2F/res/values/attrs.xml(0,0): Error APT0000: resource android:attr/preserveIconSpacing is private. (APT0000) (SafetyNetSample)
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/Xamarin.Android.Common.targets(2,2): Error APT0000: failed linking references. (APT0000) (SafetyNetSample)





```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Gcm" Version="71.1600.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```


```
        <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
        <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
        <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
        <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
        <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
        <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
        <PackageReference Include="Xamarin.GooglePlayServices.Places" Version="71.1600.0" />
        <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```






```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Plus" Version="71.1600.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```





```
    <PackageReference Include="Xamarin.Android.Support.Design" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Essentials" Version="1.1.0" />
    <PackageReference Include="Xamarin.Firebase.Ads.Lite">
      <Version>71.1601.0</Version>
    </PackageReference>
```


```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Panorama" Version="71.1600.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```







```
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.GooglePlayServices.Analytics" Version="71.1608.0" />
```




```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Fitness" Version="71.1601.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```

Dark... not found

Xamarin.Android.Support.v7.AppCompat




```
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
    <PackageReference Include="Xamarin.GooglePlayServices.Location" Version="71.1600.0" />
```





```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Games" Version="71.1700.0" />
    <PackageReference Include="Xamarin.GooglePlayServices.Plus" Version="71.1600.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```


```
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.GooglePlayServices.AppInvite" Version="71.1607.0" />
```









```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Drive" Version="71.1600.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```



```
      <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
      <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
      <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
      <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
      <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
      <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
      <PackageReference Include="Xamarin.GooglePlayServices.Maps" Version="71.1610.0" />
      <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```



```
    <PackageReference Include="Xamarin.Android.Support.Annotations" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v4" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.AppCompat" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Collections" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.UI" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Core.Utils" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.CustomTabs" Version="" />
    <PackageReference Include="Xamarin.Android.Support.Interpolator" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.Media.Compat" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.MediaRouter" Version="" />
    <PackageReference Include="Xamarin.Android.Support.v7.Palette" Version="28.0.0.1" />
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView" Version="" />
    <PackageReference Include="Xamarin.GooglePlayServices.Cast" Version="71.1602.0" />
    <PackageReference Include="Xamarin.Build.Download" Version="0.4.11" />
```
