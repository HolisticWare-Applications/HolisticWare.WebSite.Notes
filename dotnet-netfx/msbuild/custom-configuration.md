# MSBuild Custom Configurations


custom-configuration.md

MSBuild Configuration

*   MSBuildConfigurationDefaults

    *   https://github.com/pedrolamas/MSBuildConfigurationDefaults

```xml
    <!--
    https://github.com/pedrolamas/MSBuildConfigurationDefaults
    -->
    <PackageReference Include="MSBuildConfigurationDefaults" Version="1.0.1">
        <PrivateAssets>all</PrivateAssets>
        <IncludeAssets>runtime; build; native; contentfiles; analyzers</IncludeAssets>
    </PackageReference>
```

```xml
    <PropertyGroup Condition="'$(Configuration)' == 'ReleaseProfiled'">
        <ConfigurationGroup>Release</ConfigurationGroup>
        <DebugSymbols>true</DebugSymbols>  
    </PropertyGroup>
```

```xml
    <PropertyGroup Condition="'$(Configuration)' == 'ReleaseStaging'">
        <ConfigurationGroup>Release</ConfigurationGroup>
    </PropertyGroup>
```

*   https://www.pedrolamas.com/2017/04/24/creating-custom-build-configurations-for-the-dotnet-core-project-format/

