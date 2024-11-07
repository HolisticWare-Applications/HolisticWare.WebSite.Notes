# PR NuGets Android

pr-nugets-android.md

```shell
find . -type f -iname "*.csproj" -exec grep -Hni "AndroidX" {} \;
find . -type f -iname "*.csproj" -exec grep -Hni "GooglePlayServices" {} \;
find . -type f -iname "*.csproj" -exec grep -Hni "Firebase" {} \;
```

```shell
code \
    ./eng/AndroidX.targets \
    ./eng/Versions.props \
    ./src/Core/src/Core.csproj \
    ./src/Compatibility/ControlGallery/src/Android/Compatibility.ControlGallery.Android.csproj \
    ./src/Compatibility/Material/src/Android/Compatibility.Material.Android.csproj \
    ./src/Essentials/src/Essentials.csproj \
    ./src/Compatibility/Maps/src/Android/Compatibility.Maps.Android.csproj \
    ./src/Compatibility/Android.AppLinks/src/Compatibility.Android.AppLinks.csproj \
    ./src/Workload/Microsoft.Maui.Sdk/Microsoft.Maui.Sdk.csproj \
    ./src/Controls/Foldable/src/Controls.Foldable.csproj \
    ./src/Controls/src/Xaml/Controls.Xaml.csproj \
    ./src/Compatibility/ControlGallery/src/EmbeddingTestBeds/Embedding.Droid/Directory.Build.targets \

```