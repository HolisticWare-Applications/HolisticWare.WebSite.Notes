# SDK style projects

sdk-style-projects.md 

*   https://montemagno.com/converting-xamarin-libraries-to-sdk-style-multi-targeted-projects/

Old style:

```
<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" ToolsVersion="4.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <Import Project="..\packages\NuGet.Build.Packaging.0.2.0\build\NuGet.Build.Packaging.props" Condition="Exists('..\packages\NuGet.Build.Packaging.0.2.0\build\NuGet.Build.Packaging.props')" />
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProjectGuid>{0098815D-8864-4EB8-A76C-8BE944B2FD8E}</ProjectGuid>
    <ProjectTypeGuids>{10368E6C-D01B-4462-8E8B-01FC667A7035};{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}</ProjectTypeGuids>
    <OutputType>Library</OutputType>
    <RootNamespace>Xamarin.TensorFlow.Lite</RootNamespace>
    <AssemblyName>Xamarin.TensorFlow.Lite</AssemblyName>
    <TargetFrameworkVersion>v8.1</TargetFrameworkVersion>
    <MonoAndroidResourcePrefix>Resources</MonoAndroidResourcePrefix>
    <MonoAndroidAssetsPrefix>Assets</MonoAndroidAssetsPrefix>
    <AndroidUseLatestPlatformSdk>true</AndroidUseLatestPlatformSdk>
    <AndroidClassParser>class-parse</AndroidClassParser>
    <PackOnBuild>true</PackOnBuild>
    <PackageId>Xamarin.TensorFlow.Lite</PackageId>
    <PackageVersion>1.9.0-alpha01</PackageVersion>
    <Authors>Microsoft / Xamarin</Authors>
    <Description>Bindings for Google's TensorFlow Lite package (Google Play Services dependency)</Description>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">
    <DebugSymbols>true</DebugSymbols>
    <DebugType>full</DebugType>
    <Optimize>false</Optimize>
    <OutputPath>bin\Debug</OutputPath>
    <DefineConstants>DEBUG;</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <AndroidLinkMode>None</AndroidLinkMode>
    <AllowUnsafeBlocks>false</AllowUnsafeBlocks>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    <DebugSymbols>true</DebugSymbols>
    <DebugType>pdbonly</DebugType>
    <Optimize>true</Optimize>
    <OutputPath>bin\Release</OutputPath>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <AndroidManagedSymbols>true</AndroidManagedSymbols>
    <AndroidUseSharedRuntime>false</AndroidUseSharedRuntime>
    <AllowUnsafeBlocks>false</AllowUnsafeBlocks>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="System" />
    <Reference Include="System.Xml" />
    <Reference Include="System.Core" />
    <Reference Include="Mono.Android" />
  </ItemGroup>
  <ItemGroup>
    <Compile Include="Properties\AssemblyInfo.cs" />
  </ItemGroup>
  <ItemGroup>
    <None Include="packages.config" />
  </ItemGroup>
  <ItemGroup>
    <TransformFile Include="Transforms\EnumFields.xml" />
    <TransformFile Include="Transforms\EnumMethods.xml" />
    <TransformFile Include="Transforms\Metadata.xml" />
  </ItemGroup>
  <ItemGroup>
    <LibraryProjectZip Include="..\..\externals\android\tensorflow-lite-1.9.0.aar">
      <Link>Jars\tensorflow-lite-1.9.0.aar</Link>
    </LibraryProjectZip>
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Additions\" />
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\Xamarin\Android\Xamarin.Android.Bindings.targets" />
    
  <Import Project="..\packages\NuGet.Build.Packaging.0.2.0\build\NuGet.Build.Packaging.targets" Condition="Exists('..\packages\NuGet.Build.Packaging.0.2.0\build\NuGet.Build.Packaging.targets')" />
</Project>
```

SDK style

```
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <AndroidCodegenTarget>XAJavaInterop1</AndroidCodegenTarget>
    <TargetFrameworks>MonoAndroid81</TargetFrameworks>
    <IsBindingProject>true</IsBindingProject>

    <AssemblyName>Xamarin.TensorFlow.Lite</AssemblyName>
    <MonoAndroidResourcePrefix>Resources</MonoAndroidResourcePrefix>
    <MonoAndroidAssetsPrefix>Assets</MonoAndroidAssetsPrefix>
    <AndroidUseLatestPlatformSdk>False</AndroidUseLatestPlatformSdk>
    <AndroidUseIntermediateDesignerFile>True</AndroidUseIntermediateDesignerFile>
    <AndroidResgenFile>Resources\Resource.designer.cs</AndroidResgenFile>

  </PropertyGroup>

  <PropertyGroup>
    <AndroidClassParser>class-parse</AndroidClassParser>
  </PropertyGroup>

  <ItemGroup>
    <TransformFile Include="transforms\*.xml" />
  </ItemGroup>

  <ItemGroup>
    <LibraryProjectZip Include="..\..\externals\android\tensorflow-lite-1.9.0.aar" >
        <Link>Jars\tensorflow-lite-1.9.0.aar</Link>
    </LibraryProjectZip>
  </ItemGroup>

  <ItemGroup>
    <!--
    <ProjectReference Include="..\things\Xamarin.Android.Things.csproj" />
    -->
  </ItemGroup>


  <ItemGroup>
    <PackageReference Include="MSBuild.Sdk.Extras" Version="1.4.0" PrivateAssets="All" />
  </ItemGroup>

  <Import Project="$(MSBuildSDKExtrasTargets)" Condition="Exists('$(MSBuildSDKExtrasTargets)')" />
</Project>
```