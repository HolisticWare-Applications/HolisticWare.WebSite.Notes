# Package Dependencies

package-dependencies.md

```
code \
    ./Xamarin.Forms.ControlGallery.Android/Nuget.Build.targets \
    ./Xamarin.Forms.ControlGallery.Android/Directory.Build.targets \
    ./Stubs/Xamarin.Forms.Platform.Android/Xamarin.Forms.Platform.Android\ \(Forwarders\).csproj \
    ./DualScreen/DualScreen.Android/DualScreen.Android.csproj \
    ./Xamarin.Forms.Maps.Android/Xamarin.Forms.Maps.Android.csproj \
    ./Xamarin.Forms.ControlGallery.Android/Xamarin.Forms.ControlGallery.Android.csproj \
    ./Xamarin.Forms.DualScreen/Xamarin.Forms.DualScreen.csproj \
    ./Xamarin.Forms.Platform.Android.AppLinks/Xamarin.Forms.Platform.Android.AppLinks.csproj \
    ./Xamarin.Forms.Platform.Android/Xamarin.Forms.Platform.Android.csproj \
    ./EmbeddingTestBeds/Embedding.Droid/Directory.Build.targets \
```


```
./.nuspec/Xamarin.Forms.nuspec \
./.nuspec/Xamarin.Forms.Visual.Material.nuspec \
./.nuspec/Xamarin.Forms.AppLinks.nuspec: \
```


potential problems (after investigation) due to very old dependencies that might transitively pull in
problematic (outdated packages:)

```
    <PackageReference Include="Xam.Plugin.DeviceInfo">
      <Version>3.0.2</Version>
    </PackageReference>
```