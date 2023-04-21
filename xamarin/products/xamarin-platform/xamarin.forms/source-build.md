# Xamarin.Forms Source Build


```
git clean -xdf && git pull
./build.sh --target vsmac

dotnet cake --target=provision

msbuild /restore Xamarin.Forms.sln
```


```
Error while trying to load the project './Xamarin.Forms.Platform.MacOS/Xamarin.Forms.Platform.MacOS.csproj': File not found: ./Xamarin.Forms.Platform.MacOS/Xamarin.Forms.Platform.MacOS.csproj
Error while trying to load the project './Xamarin.Forms.Maps.MacOS/Xamarin.Forms.Maps.MacOS.csproj': File not found: ./Xamarin.Forms.Maps.MacOS/Xamarin.Forms.Maps.MacOS.csproj
```