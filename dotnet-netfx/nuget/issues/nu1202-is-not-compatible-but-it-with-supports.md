# NU1202 is not compatible but it with supports

nu1202-is-not-compatible-but-it-with-supports.md

GPS-FB-MLKit builds (multitargeted) confusing error:

```
./generated/io.opencensus.opencensus-contrib-grpc-metrics/io.opencensus.opencensus-contrib-grpc-metrics.csproj : error NU1202: Package Xamarin.Google.Code.FindBugs.JSR305 3.0.2.2 is not compatible with net6.0-android31.0 (.NETCoreApp,Version=v6.0). Package Xamarin.Google.Code.FindBugs.JSR305 3.0.2.2 supports: [./generated/GooglePlayServices.sln]
./generated/io.opencensus.opencensus-contrib-grpc-metrics/io.opencensus.opencensus-contrib-grpc-metrics.csproj : error NU1202:   - monoandroid90 (MonoAndroid,Version=v9.0) [./generated/GooglePlayServices.sln]
./generated/io.opencensus.opencensus-contrib-grpc-metrics/io.opencensus.opencensus-contrib-grpc-metrics.csproj : error NU1202:   - net6.0-android31.0 (.NETCoreApp,Version=v6.0) [./generated/GooglePlayServices.sln]
```



```
Generating MSBuild file ./generated/io.opencensus.opencensus-api/obj/io.opencensus.opencensus-api.csproj.nuget.g.props.
Generating MSBuild file ./generated/io.opencensus.opencensus-api/obj/io.opencensus.opencensus-api.csproj.nuget.g.targets.
```


```
Generating MSBuild file *.csproj.nuget.g.props.
Generating MSBuild file *.csproj.nuget.g.targets.
```


```
dotnet cake -t=clean \
&& \
dotnet cake -t=binderate \
&& \
dotnet restore generated/GooglePlayServices.sln /v:diagnostic
```


```
dotnet cake -t=clean \
&& \
dotnet cake -t=binderate \
&& \
dotnet restore generated/io.opencensus.opencensus-contrib-grpc-metrics/io.opencensus.opencensus-contrib-grpc-metrics.csproj
```



```
brew install nuget
```


https://github.com/cake-build/cake/blob/main/src/Cake.Core/IO/NuGet/NuGetToolResolver.cs#L26-L28

https://github.com/NuGet/Home/issues/4681

https://github.com/NuGet/Home/issues/10741

https://github.com/NuGet/Home/issues/10127

## Workaround

run restore twice

