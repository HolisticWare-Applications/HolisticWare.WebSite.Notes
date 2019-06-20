# MSBuild Project namespace

msbuild-project-namespace.md

```
<Project Sdk="Microsoft.NET.Sdk">
```
```
error MSB4041: 
The default XML namespace of the project must be the MSBuild XML namespace. 
If the project is authored in the MSBuild 2003 format, please add 
xmlns="http://schemas.microsoft.com/developer/msbuild/2003" to the <Project> element. 
If the project has been authored in the old 1.0 or 1.2 format, please convert it to MSBuild 2003 format.
```

```
dotnet msbuild source\HolisticWare.Core.Text.NetStandard10\HolisticWare.Core.Text.NetStandard10.csproj
```


```
msbuild source\HolisticWare.Core.Text.NetStandard10\HolisticWare.Core.Text.NetStandard10.csproj
```

