# Shared Project

shared-project.md


# Projitems

*   https://github.com/sharpjs/Subatomix.Build.Packaging.PowerShellModule/blob/master/.root.targets

*   https://github.com/dotnet/sdk/issues/2511

*   https://developercommunity.visualstudio.com/t/overriding-globs/87038

*   https://stackoverflow.com/questions/70419444/include-all-folder-files-in-a-shared-project

*   https://youtrack.jetbrains.com/issue/RIDER-95675

    *   https://learn.microsoft.com/en-us/dotnet/core/project-sdk/overview

    *   https://dfederm.com/authoring-msbuild-project-sdks/

    *   https://github.com/microsoft/MSBuildSdks/blob/main/src/NoTargets/README.md


Rider:


```
0>Microsoft.NET.Sdk.DefaultItems.Shared.targets(190,5): Error NETSDK1022 : Duplicate 'Compile' items were included. The .NET SDK includes 'Compile' items from your project directory by default. You can either remove these items from your project file, or set the 'EnableDefaultCompileItems' property to 'false' if you want to explicitly include them in your project file. For more information, see https://aka.ms/sdkimplicititems. The duplicate items were: './LibrarySource/LibrarySource.SharedProject/Class3.cs'
0>------- Finished building project: UnitTests.MSTest. Succeeded: False. Errors: 1. Warnings: 0
1>Microsoft.NET.Sdk.DefaultItems.Shared.targets(190,5): Error NETSDK1022 : Duplicate 'Compile' items were included. The .NET SDK includes 'Compile' items from your project directory by default. You can either remove these items from your project file, or set the 'EnableDefaultCompileItems' property to 'false' if you want to explicitly include them in your project file. For more information, see https://aka.ms/sdkimplicititems. The duplicate items were: './LibrarySource/LibrarySource.SharedProject/Class3.cs'
1>------- Finished building project: UnitTests.XUnit. Succeeded: False. Errors: 1. Warnings: 0
2>Microsoft.NET.Sdk.DefaultItems.Shared.targets(190,5): Error NETSDK1022 : Duplicate 'Compile' items were included. The .NET SDK includes 'Compile' items from your project directory by default. You can either remove these items from your project file, or set the 'EnableDefaultCompileItems' property to 'false' if you want to explicitly include them in your project file. For more information, see https://aka.ms/sdkimplicititems. The duplicate items were: './LibrarySource/LibrarySource.SharedProject/Class3.cs'
2>------- Finished building project: UnitTests.NUnit. Succeeded: False. Errors: 1. Warnings: 0
```

*   https://github.com/dotnet/project-system/issues/6010

    https://github.com/dotnet/project-system/issues/6010#issuecomment-687881459


```xml
<Compile Include="$(MSBuildThisFileDirectory)**\*$(DefaultLanguageSourceExtension)" />
```


Prevent the shared project from being compiled by editing its .csproj like below. This will still automatically include all files in the project's folder to be part of the project from the Solution Explorer's point of view, as well as for source control.

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>netcoreapp3.1</TargetFramework>
    <EnableDefaultCompileItems>false</EnableDefaultCompileItems>
    <EnableDefaultNoneItems>false</EnableDefaultNoneItems>
  </PropertyGroup>
  <ItemGroup>
    <None Include="**\*.cs" Exclude="obj\**\*.*" />
  </ItemGroup>
</Project>
```

To reference the shared project files, do this:

```xml
<!--Reference files from shared csproj-->
<ItemGroup Label="Imports">
  <Compile Include="..\WorkflowModule\**\*.cs"></Compile>
</ItemGroup>

<!--Instead of shproj import --> 
<!--<Import Project="..\WorkflowModule\WorkflowModule.projitems" Label="Shared" />-->
```


