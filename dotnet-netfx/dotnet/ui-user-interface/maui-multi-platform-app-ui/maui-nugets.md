# MAUI NuGets

maui-nugets.md

```
code -n \
    ./eng/Versions.props \
    ./eng/AndroidX.targets \
    ./src/Compatibility/Maps/src/Android/Compatibility.Maps.Android.csproj \
    ./src/Core/AndroidNative/maui/build.gradle \
```

```
gradle wrapper --gradle-version 8.0
```

```
dotnet tool restore
dotnet cake --target=VS --workloads=global
dotnet tool restore
dotnet cake --target=VS --workloads=global --android --ios --catalyst
```

```
dotnet tool restore
dotnet cake \
    --target=VS \
    --sln="<download_directory>\MauiApp2\MauiApp2.sln" 
```