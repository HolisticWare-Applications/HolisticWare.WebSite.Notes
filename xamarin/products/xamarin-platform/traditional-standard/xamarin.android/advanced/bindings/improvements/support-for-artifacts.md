# Support for Artifacts

support-for-artifacts.md

## MAUI

*   https://github.com/dotnet/maui/tree/main/src/Templates/src/templates

## Projects

Controls.DualScreen.csproj

```
    <PackageId>Microsoft.Maui.Controls.DualScreen</PackageId>

    <PackageReference Include="Xamarin.DuoSdk" Version="0.0.3.4" />

  <ItemGroup Condition="'$(TargetFramework)' == 'MonoAndroid10.0'">
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" />
    <PackageReference Include="Xamarin.Google.Android.Material" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V4" />
  </ItemGroup>
```

Essentials.csproj

    <PackageReference Include="Xamarin.AndroidX.Browser" />


Compatibility.Android.AppLinks.csproj

    <PackageReference Include="Xamarin.Firebase.AppIndexing" Version="119.1.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V4" />

 Compatibility.ControlGallery.Android.csproj
 
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" />
    <PackageReference Include="Xamarin.AndroidX.Browser" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V4" />
    <PackageReference Include="Xamarin.AndroidX.Palette" />
    <PackageReference Include="Xamarin.Google.Android.Material" />
 

 Compatibility.Maps.Android.csproj

    <PackageReference Include="Microsoft.Maui.Graphics" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" />
    <PackageReference Include="Xamarin.Google.Android.Material" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V4" />
    <PackageReference Include="Xamarin.GooglePlayServices.Maps" Version="117.0.0" />


Compatibility.Material.Android.csproj

    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" />
    <PackageReference Include="Xamarin.Google.Android.Material" />


## NuSpecs

Microsoft.Maui.Controls.Compatibility.AppLinks.nuspec

        <dependency id="Xamarin.Firebase.AppIndexing" version="119.1.0"/>        
        <dependency id="Xamarin.AndroidX.Lifecycle.LiveData" version="2.2.0.4"/>
        <dependency id="Xamarin.AndroidX.Legacy.Support.V4" version="1.0.0.6"/>


Microsoft.Maui.Controls.Compatibility.Maps.nuspec

        <dependency id="Xamarin.GooglePlayServices.Maps" version="117.0.0"/>
        <dependency id="Xamarin.Forms" version="$version$"/>


Microsoft.Maui.Controls.Compatibility.Visual.Material.nuspec

        <dependency id="Xamarin.AndroidX.Lifecycle.LiveData" version="2.2.0.4" />
        <dependency id="Xamarin.Google.Android.Material" version="1.2.1.1" />



## New Artifacts

### Use case `androidx.startup.startup-runtime`

Implement a straightforward, performant way to initialize components at app startup.

*   https://developer.android.com/jetpack/androidx/releases/startup


### Use case `androidx.ui.*`

it would be nice to get assurance that MAUI will never use this group

*   https://www.youtube.com/watch?v=PJ3RdfJ4Np8&ab_channel=edureka%21



AS and GPS
    https://www.dotnetmauipodcast.com/40


https://www.altexsoft.com/blog/mobile/pros-and-cons-of-xamarin-vs-native/

https://yojji.io/blog/flutter-vs-xamarin

https://www.altexsoft.com/blog/mobile/13-apps-made-with-xamarin-cross-platform-development-in-practice/

https://www.theregister.com/2020/03/27/xamarin_improvements/





https://www.upwork.com/ppc/landing/?hl=Top%20Rated%20Xamarin%20Developers&query=Xamarin&ct=xamarin%20Developers

https://developers.turing.com/



## Proposal - prioritizing Artifacts

Given CLI

```bash
xamarin-android-binderator --config=config.json --basepath=./
```

it would be possible to split artifacts into prioritized groups:

```bash
config-00.json
config-01.json
config-02.json
```

where number is priority group (higher number meaning lower priority) which determines update frequency 
(lower priority less frequent updates)

