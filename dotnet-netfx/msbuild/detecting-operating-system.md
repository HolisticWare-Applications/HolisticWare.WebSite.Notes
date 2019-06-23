# Detecting Operating System

detecting-operating-system.md

```
  <PropertyGroup>
    <IsWindows Condition="'$(OS)' == 'Windows_NT'">true</IsWindows>
  </PropertyGroup>
  
  <PropertyGroup Condition="'$(MSBuildRuntimeType)' == 'Core'">
    <IsOSX Condition="'$([System.Runtime.InteropServices.RuntimeInformation]::IsOSPlatform($([System.Runtime.InteropServices.OSPlatform]::OSX)))' == 'true'">true</IsOSX>
    <IsLinux Condition="'$([System.Runtime.InteropServices.RuntimeInformation]::IsOSPlatform($([System.Runtime.InteropServices.OSPlatform]::Linux)))' == 'true'">true</IsLinux>
  </PropertyGroup>

  <Target Name="PrintRID" BeforeTargets="Build">
    <Message Text="IsWindows $(IsWindows)" Importance="high" />
    <Message Text="IsOSX $(IsOSX)" Importance="high" />
    <Message Text="IsLinux $(IsLinux)" Importance="high" />
  </Target>
  ```