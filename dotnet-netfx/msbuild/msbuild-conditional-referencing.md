# MSBuild Conditional referencing

msbuild-conditional-referencing.md

## Problem

MsBuild Conditional references based on existence of project.

When project is available reference project for debugging, else reference package.

Is that too much?

##  Attempts

### Attempt 2 

Need to retest

```
  <ItemGroup>
    <PackageReference Include="Xamarin.Auth" Version="1.7.0" Condition="!exists('..\..\..\..\..\..\source\Core\Xamarin.Auth.UniversalWindowsPlatform\Xamarin.Auth.UniversalWindowsPlatform.csproj')" />
    <ProjectReference Include="..\..\..\..\..\..\source\Core\Xamarin.Auth.UniversalWindowsPlatform\Xamarin.Auth.UniversalWindowsPlatform.csproj" Condition="exists('..\..\..\..\..\..\source\Core\Xamarin.Auth.UniversalWindowsPlatform\Xamarin.Auth.UniversalWindowsPlatform.csproj')">
    </ProjectReference>
  </ItemGroup>
```

### Attempt 3 - condition in `ItemGroup`

Android:

```
  <ItemGroup Condition="exists('..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.XamarinAndroid.csproj')">
    <ProjectReference Include="..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.XamarinAndroid.csproj">
        <HintPath>..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.XamarinAndroid.csproj</HintPath>        
    </ProjectReference> 
  </ItemGroup>
  <ItemGroup Condition="!exists('..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinAndroid\Xamarin.Auth.XamarinAndroid.csproj')">
    <PackageReference Include="Xamarin.Auth" Version="1.7.0" />
  </ItemGroup>
```

error:

```
```

iOS:

```
  <ItemGroup Condition="exists('..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinIOS\Xamarin.Auth.XamarinIOS.csproj')">
    <ProjectReference Include="..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinIOS\Xamarin.Auth.XamarinIOS.csproj">
        <HintPath>..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinIOS\Xamarin.Auth.XamarinIOS.csproj</HintPath>        
    </ProjectReference> 
  </ItemGroup>
  <ItemGroup Condition="!exists('..\..\..\..\..\..\source\Core\Xamarin.Auth.XamarinIOS\Xamarin.Auth.XamarinIOS.csproj')">
    <PackageReference Include="Xamarin.Auth" Version="1.7.0" />
  </ItemGroup>
```

error:

```
AuthExample/AuthExample.iOS/CSC: 
Error CS0006: 
Metadata file 
    'source/Core/Xamarin.Auth.XamarinIOS/bin/Debug/Xamarin.Auth.dll' 
could not be found 
```