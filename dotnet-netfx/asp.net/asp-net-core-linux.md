# ASP.net Core on Linux

asp-net-core-linux.md

```
<Project Sdk="Microsoft.NET.Sdk.Web">  
  
  <PropertyGroup>  
    <TargetFramework>net461</TargetFramework>  
    <RuntimeIdentifiers>osx-x64;linux-x64</RuntimeIdentifiers>  
  </PropertyGroup>  
  
  <ItemGroup>  
    <PackageReference Include="Microsoft.AspNetCore" Version="2.0.0" />  
    <PackageReference Include="Microsoft.AspNetCore.Mvc" Version="2.0.0" />  
    <PackageReference Include="Microsoft.AspNetCore.Mvc.Razor.ViewCompilation" Version="2.0.0" PrivateAssets="All" />  
    <PackageReference Include="Microsoft.AspNetCore.StaticFiles" Version="2.0.0" />  
    <PackageReference Include="Microsoft.VisualStudio.Web.BrowserLink" Version="2.0.0" />  
  </ItemGroup>  
  
  <ItemGroup>  
    <DotNetCliToolReference Include="Microsoft.VisualStudio.Web.CodeGeneration.Tools" Version="2.0.0" />  
  </ItemGroup>  
</Project>  
```

```
dotnet publish -r osx-x64 -c Release -f net461  
``` 

```
dotnet publish -r linux-x64 -c Release -f net461  
```

```
OS	Libuv file after publishing
Windows	libuv.dll
Linux	libuv.so
OSX	libuv.dylib
```

*	https://andrewlock.net/building-net-framework-asp-net-core-apps-on-linux-using-mono-and-the-net-cli/

*	https://blog.lextudio.com/migrating-jexus-manager-to-net-core-3-0-f1c41ae50572

