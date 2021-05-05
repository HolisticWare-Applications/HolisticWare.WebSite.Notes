# Disassemblers

disassemblers.md

```
curl -OL https://www.nuget.org/api/v2/package/Xamarin.Google.Android.Material/1.0.0.1     
unzip 1.0.0.1 -d material-1.0.0.1
monodis \
    ./material-1.0.0.1/lib/monoandroid90/Xamarin.Google.Android.Material.dll \
    | \

```

```
curl -OL https://www.nuget.org/api/v2/package/Xamarin.Google.Android.Material/1.1.0-rc1
unzip 1.1.0-rc1 -d material-1.1.0-rc1
monodis \
    ./material-1.1.0-rc1/lib/monoandroid90/Xamarin.Google.Android.Material.dll \
    | \
    grep MaterialButtonToggleGroup
```


```
dotnet tool install --tool-path . dotnet-ildasm

dotnet tool install --global dotnet-ildasm --version 0.12.2

dotnet tool install --global dotnet-ildasm


dotnet ildasm \
    ./material-1.0.0.1/lib/monoandroid90/Xamarin.Google.Android.Material.dll \
    | \
    grep MaterialButtonToggleGroup

dotnet ildasm \
    ./material-1.1.0-rc1/lib/monoandroid90/Xamarin.Google.Android.Material.dll \
    | \
    grep MaterialButtonToggleGroup


dotnet ildasm \
    --item MaterialButtonToggleGroup \
    ./material-1.1.0-rc1/lib/monoandroid90/Xamarin.Google.Android.Material.dll

dotnet ildasm \
    --item MaterialButtonToggleGroup \
    ./material-1.0.0.1/lib/monoandroid90/Xamarin.Google.Android.Material.dll
```