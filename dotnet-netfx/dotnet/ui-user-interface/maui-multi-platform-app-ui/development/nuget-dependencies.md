# Nuget Dependencies

nuget-dependencies.md


```
dotnet tool restore
dotnet cake --target=VS --workloads=global
```

```
code -n \
    ./eng/Versions.props \
    ./eng/AndroidX.targets \
    ./src/Core/src/Core.csproj \
    ./src/Compatibility/Maps/src/Android/Compatibility.Maps.Android.csproj \
    ./src/Compatibility/ControlGallery/src/Android/Compatibility.ControlGallery.Android.csproj \
    ./src/Compatibility/Material/src/Android/Compatibility.Material.Android.csproj \
    ./src/Compatibility/Android.AppLinks/src/Compatibility.Android.AppLinks.csproj \
    ./src/Essentials/src/Essentials.csproj \
    ./src/Controls/Foldable/src/Controls.Foldable.csproj \
    ./src/Workload/Microsoft.Maui.Sdk/Microsoft.Maui.Sdk.csproj \
```

If Glide is updated

```
code -n \
    ./src/Core/AndroidNative/maui/build.gradle \
    ./src/Core/AndroidNative/build.gradle \
    ./src/Core/AndroidNative/gradle/wrapper/gradle-wrapper.properties \
```



cd src/Core/AndroidNative
gradle

## java 17

gradle wrapper --gradle-version 8.2 --distribution-type all

https://docs.gradle.org/current/userguide/gradle_wrapper.html

https://gradle.org/release-checksums/


https://github.com/dotnet/maui/pull/15399

https://github.com/dotnet/maui/pull/15746

https://github.com/dotnet/maui/pull/15685

https://github.com/dotnet/maui/pull/15746