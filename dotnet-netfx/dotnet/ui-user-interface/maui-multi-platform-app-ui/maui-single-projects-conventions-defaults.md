## MAUI Single Projects Conventions/Defaults

maui-single-projects-conventions-defaults.md

*   https://github.com/dotnet/maui/blob/main/.nuspec/Microsoft.Maui.Controls.SingleProject.targets

```
  <PropertyGroup Condition=" '$(SingleProject)' == 'true' ">
    <!-- Android -->
    <EnableDefaultAndroidItems>false</EnableDefaultAndroidItems>
    <AndroidProjectFolder Condition=" '$(AndroidProjectFolder)' == '' ">Android\</AndroidProjectFolder>
    <AndroidManifest>$(AndroidProjectFolder)AndroidManifest.xml</AndroidManifest>
    <MonoAndroidResourcePrefix>$(AndroidProjectFolder)Resources</MonoAndroidResourcePrefix>
    <MonoAndroidAssetsPrefix>$(AndroidProjectFolder)Assets</MonoAndroidAssetsPrefix>
    <!-- iOS -->
    <EnableDefaultiOSItems>false</EnableDefaultiOSItems>
    <iOSProjectFolder Condition=" '$(iOSProjectFolder)' == '' ">iOS\</iOSProjectFolder>
    <IPhoneResourcePrefix Condition=" '$([MSBuild]::GetTargetPlatformIdentifier($(TargetFramework)))' == 'ios' ">$(iOSProjectFolder)Resources</IPhoneResourcePrefix>
    <_SingleProjectiOSExcludes>$(iOSProjectFolder)/**/.*/**</_SingleProjectiOSExcludes>

    <!-- MacCatalyst -->
    <EnableDefaultMacCatalystItems>false</EnableDefaultMacCatalystItems>
    <MacCatalystProjectFolder Condition=" '$(MacCatalystProjectFolder)' == '' ">MacCatalyst\</MacCatalystProjectFolder>
    <IPhoneResourcePrefix Condition=" '$([MSBuild]::GetTargetPlatformIdentifier($(TargetFramework)))' == 'maccatalyst' ">$(MacCatalystProjectFolder)Resources</IPhoneResourcePrefix>
    <_SingleProjectMacCatalystExcludes>$(MacCatalystProjectFolder)/**/.*/**</_SingleProjectMacCatalystExcludes>
  </PropertyGroup>
```