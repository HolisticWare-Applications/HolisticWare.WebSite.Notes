# `monodroid-samples` migration logs

monodroid-samples-migration-logs.md

## Case 01

AgendaData

```
  <package id="Xamarin.Android.Arch.Core.Common" version="1.0.0" targetFramework="monoandroid80" />
  <package id="Xamarin.Android.Arch.Lifecycle.Common" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Arch.Lifecycle.Runtime" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Annotations" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.UI" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.Utils" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Fragment" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Media.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v4" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v7.RecyclerView" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Build.Download" version="0.4.7" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Base" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Basement" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Tasks" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Wearable" version="60.1142.0" targetFramework="monoandroid80" />
```

Wearable

```
  <package id="Xamarin.Android.Arch.Core.Common" version="1.0.0" targetFramework="monoandroid80" />
  <package id="Xamarin.Android.Arch.Lifecycle.Common" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Arch.Lifecycle.Runtime" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Annotations" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.UI" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.Utils" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Fragment" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Media.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Percent" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v4" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v7.RecyclerView" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Wear" version="2.0.1.1" targetFramework="monoandroid70" />
  <package id="Xamarin.Build.Download" version="0.4.7" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Base" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Basement" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Tasks" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Wearable" version="60.1142.0" targetFramework="monoandroid80" />
```

## Case 02

DataLayer

```
  <package id="Xamarin.Android.Arch.Core.Common" version="1.0.0" targetFramework="monoandroid80" />
  <package id="Xamarin.Android.Arch.Lifecycle.Common" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Arch.Lifecycle.Runtime" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Annotations" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.UI" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.Utils" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Fragment" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Media.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v4" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v7.RecyclerView" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Build.Download" version="0.4.7" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Base" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Basement" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Tasks" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Wearable" version="60.1142.0" targetFramework="monoandroid80" />
```

```
    <PackageReference Include="Xamarin.Android.Support.Compat">
      <Version>28.0.0.3</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.Android.Support.v4">
      <Version>28.0.0.3</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView">
      <Version>28.0.0.3</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.GooglePlayServices.Wearable">
      <Version>71.1601.0</Version>
    </PackageReference>
```

```
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" Version="2.1.0-rc1" />
    <PackageReference Include="Xamarin.AndroidX.PercentLayout" Version="1.0.0-rc1" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V4" Version="1.0.0-rc1" />
    <PackageReference Include="Xamarin.AndroidX.RecyclerView" Version="1.1.0-rc1" />	
```

Wearable

```
  <package id="Xamarin.Android.Arch.Core.Common" version="1.0.0" targetFramework="monoandroid80" />
  <package id="Xamarin.Android.Arch.Lifecycle.Common" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Arch.Lifecycle.Runtime" version="1.0.3" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Annotations" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.UI" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Core.Utils" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Fragment" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Media.Compat" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.Percent" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v4" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Support.v7.RecyclerView" version="27.0.2" targetFramework="monoandroid81" />
  <package id="Xamarin.Android.Wear" version="2.0.1.1" targetFramework="monoandroid70" />
  <package id="Xamarin.Build.Download" version="0.4.7" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Base" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Basement" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Tasks" version="60.1142.0" targetFramework="monoandroid80" />
  <package id="Xamarin.GooglePlayServices.Wearable" version="60.1142.0" targetFramework="monoandroid80" />
```

```
    <PackageReference Include="Xamarin.Android.Support.Percent">
      <Version>28.0.0.3</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.Android.Support.v4">
      <Version>28.0.0.3</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.Android.Support.v7.RecyclerView">
      <Version>28.0.0.3</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.Android.Wear">
      <Version>2.2.0</Version>
    </PackageReference>
    <PackageReference Include="Xamarin.GooglePlayServices.Wearable">
      <Version>71.1601.0</Version>
    </PackageReference>
```

```
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" Version="2.1.0-rc1" />
    <PackageReference Include="Xamarin.AndroidX.PercentLayout" Version="1.0.0-rc1" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V4" Version="1.0.0-rc1" />
    <PackageReference Include="Xamarin.AndroidX.RecyclerView" Version="1.1.0-rc1" />
```