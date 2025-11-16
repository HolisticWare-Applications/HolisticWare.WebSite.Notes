# Single File

single-file.md

*   publishing single file

    *   https://www.reddit.com/r/dotnet/comments/1ogg204/how_to_get_dotnet_publish_to_make_a_single_exe/


```xml
<!-- Publishing specific defaults -->
<PropertyGroup>
  <PublishSingleFile>true</PublishSingleFile>
  <SelfContained>true</SelfContained>
  <EnableCompressionInSingleFile>true</EnableCompressionInSingleFile>
</PropertyGroup>

<PropertyGroup Condition="'$(Configuration)' == 'Release'">
  <DebugType>none</DebugType>
  <DebugSymbols>false</DebugSymbols>
</PropertyGroup>
```

```shell
dotnet publish .\ConsoleApp\ConsoleApp.csproj -o $PWD/publish -c release -r win-x64
```