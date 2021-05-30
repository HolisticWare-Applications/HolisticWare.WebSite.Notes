# `dotnet tool` Samples

dotnet-tool-samples.md

## Binderator

*   https://www.nuget.org/packages/Xamarin.AndroidBinderator.Tool/

*   https://github.com/xamarin/XamarinComponents/tree/master/Util/Xamarin.AndroidBinderator

```
dotnet tool uninstall --global Xamarin.AndroidBinderator.Tool
dotnet tool install --global Xamarin.AndroidBinderator.Tool --version 0.4.2
```

```
 dotnet tool \                      
    uninstall --global \
    xamarin.androidbinderator.tool

dotnet tool \
    install --global \
    --add-source ./output/ \
    --version 0.4.4-alpha01 \
    xamarin.androidbinderator.tool
```



## Migration Tool

*   https://www.nuget.org/packages/Xamarin.AndroidX.Migration.Tool

*   https://github.com/xamarin/AndroidX

```
dotnet tool uninstall --global Xamarin.AndroidX.Migration.Tool
dotnet tool install --global Xamarin.AndroidX.Migration.Tool --version 1.0.0-rc1
```

## Cake Tool

*   https://www.nuget.org/packages/Cake.Tool/

*   https://github.com/cake-build/cake

*   https://github.com/cake-build/cake/blob/main/src/Cake/Cake.csproj#L10-L20

```
dotnet tool uninstall --global \
    Cake.Tool 
dotnet tool install --global \
    Cake.Tool 
```

```
dotnet tool uninstall --global \
    Cake.Tool 
dotnet tool install --global \
    Cake.Tool \
    --version 0.38.5
```

## `boots`

*   https://www.nuget.org/packages/boots/

*   https://github.com/jonathanpeppers/boots

```
dotnet tool uninstall --global boots
dotnet tool install --global boots --version 1.0.1.386
```

## Android SDK

*   https://github.com/redth/androidsdk.tools
