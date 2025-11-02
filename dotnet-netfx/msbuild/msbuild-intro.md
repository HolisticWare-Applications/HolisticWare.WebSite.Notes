# MSBUIlD intro

msbuild-intro.md

## References / Links

*   https://www.jon-douglas.com/2017/07/26/msbuild-basics/

*   https://msdn.microsoft.com/en-us/library/ms164309.aspx

*   https://github.com/Microsoft/msbuild/blob/master/documentation/wiki/MSBuild-Resources.md

*   Cheat-Sheet

    *   https://gist.github.com/dotMorten/7db5cc3ae4ab72db784df0793b45d6ac
    
*   Tips n Tricks

    *   https://github.com/Microsoft/msbuild/blob/master/documentation/wiki/MSBuild-Tips-&-Tricks.md

## Project SDKs

*   https://learn.microsoft.com/en-us/visualstudio/msbuild/how-to-use-project-sdk

## Items

*   https://learn.microsoft.com/en-us/visualstudio/msbuild/msbuild-items

## Targets

*   https://learn.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files



## Tools

*   (./buildalyzer.md)[buildalyzer.md]

*   (./msbuilddumper.md)[msbuilddumper.md]




## Item Referencing in batching

*   http://rationalgeek.com/blog/msbuild-propertygroup-itemgroup-item-metadata-and-crazy-syntax/

## Task

*   https://natemcmaster.com/blog/2017/07/05/msbuild-task-in-nuget/

*   https://github.com/daveaglick/Buildalyzer

*   https://www.inversionofcontrol.co.uk/smarter-build-scripts-with-msbuild-and-net-core/


```
/usr/local/share/dotnet/sdk/2.1.302/Sdks/Microsoft.NET.Sdk/targets/Microsoft.PackageDependencyResolution.targets(5,5): 
Error: Assets file 
'obj/project.assets.json' doesn't have a target for '.NETFramework,Version=v4.6'. 
Ensure that restore has run and that you have included 'net46' in the TargetFrameworks for your project. 
```

*   https://www.inversionofcontrol.co.uk/smarter-build-scripts-with-msbuild-and-net-core/



MSBuild

*   https://github.com/dellis1972/MSBuildSandbox

https://github.com/dellis1972/MSBuildSandbox/blob/main/MSBuildSandbox.Tests/Tests.cs#L20

https://github.com/dotnet/android/blob/488f02f1ccc4d905c688448ba86be33f59e13832/src/Xamarin.Android.Build.Tasks/Tests/Xamarin.Android.Build.Tests/Utilities/MockBuildEngine.cs#L10

https://github.com/rainersigwald/build-task-in-solution-demo

https://github.com/dotnet/android/blob/488f02f1ccc4d905c688448ba86be33f59e13832/src/Xamarin.Android.Build.Tasks/Tests/Xamarin.Android.Build.Tests/Tasks/ResolveSdksTaskTests.cs#L181-L192

https://learn.microsoft.com/en-us/visualstudio/msbuild/task-writing


Matthias Koch. Implementing and Debugging Custom MSBuild Tasks

    https://www.youtube.com/watch?v=8qt0D_eG-_g

Tips & Tricks to improve your .NET Build Setup with MSBuild

    https://www.youtube.com/watch?app=desktop&v=ew5Yo2utdtk&t=0s

How to Work with MSBuild

    https://www.youtube.com/watch?v=tnGM8yfRDuo

Speeding up MSBuild, Tips, Tricks and ReSharper Build

    https://www.youtube.com/watch?v=CxoCuBPb0bQ

Testing.Platform, the new way to run .NET tests

    https://www.youtube.com/watch?v=9Jz47Ze9LOI

run only once

https://github.com/dotnet/msbuild/issues/2540

https://github.com/dotnet/msbuild/issues/2781

https://lizzy-gallagher.github.io/msbuild-run-target-once-per-project/

https://www.reddit.com/r/dotnet/comments/td8s1p/question_how_would_you_go_around_running_a_build/


https://lizzy-gallagher.github.io/learn-msbuild-part-1/

https://lizzy-gallagher.github.io/learn-msbuild-part-2/

https://lizzy-gallagher.github.io/learn-msbuild-part-3/

https://lizzy-gallagher.github.io/learn-msbuild-part-4/


UsingTask AssemblyFile transitive dependencies

    https://github.com/AArnott/Nerdbank.MSBuildExtension

    https://github.com/dotnet/msbuild/issues/3448



https://lizzy-gallagher.github.io/tips-for-growing-as-a-dev/


## Deployment/Distribution with NuGet

https://blog.rsuter.com/implement-custom-msbuild-tasks-and-distribute-them-via-nuget/

https://learn.microsoft.com/en-us/nuget/create-packages/creating-a-package#include-msbuild-props-and-targets-in-a-package

https://www.reddit.com/r/csharp/comments/pzydbz/nuget_packages_and_msbuild_tasks/

https://github.com/MeikTranel/NXPorts/blob/master/src/NXPorts/NXPorts.csproj



Sharing MSBuild Tasks as NuGet Packages with Nate McMaster

    https://www.youtube.com/watch?v=XagPwnXAfKQ

https://github.com/CodeConversations/MSBuild-Features-With-Nate-McMaster/tree/master/Video-2

https://github.com/CodeConversations/MSBuild-Features-With-Nate-McMaster/tree/master


    <PackageOutputPath>..\packages</PackageOutputPath>
    <DisableImplicitFrameworkReferences>true</DisableImplicitFrameworkReferences>
    <TargetFrameworks>netstandard1.3;net46</TargetFrameworks>
    <!-- Compiling for .NET Framework on non-Windows systems is not yet supported-->
    <TargetFrameworks Condition="'$(OS)' != 'Windows_NT'">netstandard1.3</TargetFrameworks>


  <ItemGroup>
    <Content Include="build\**\*" PackagePath="build\" />
  </ItemGroup>


build/*.props

```xml
<!--
  NuGet automatically imports this file into any project that has a PackageReference to 'Zipper'.

  To see this in action, execute "dotnet restore" on the 3-NuGet example and look in the obj/ folder for
  a file named Web.csproj.g.nuget.props. You'll see inside that it contains an "Import" to this file.
 -->
<Project>

  <PropertyGroup>
    <!-- Vary which task assembly is loaded based on which runtime MSBuild is using. -->
    <_TaskTfm Condition=" '$(MSBuildRuntimeType)' == 'Core' ">netstandard1.3</_TaskTfm>
    <_TaskTfm Condition=" '$(MSBuildRuntimeType)' != 'Core' ">net46</_TaskTfm>

    <_TaskAssembly>$(MSBuildThisFileDirectory)..\tools\$(_TaskTfm)\Zipper.dll</_TaskAssembly>
  </PropertyGroup>

  <UsingTask TaskName="Zipper.Tasks.Zip" AssemblyFile="$(_TaskAssembly)" />

</Project>
```

build/*.targets

```xml
<!--
  NuGet automatically imports this file into any project that has a PackageReference to 'SampleTasks'.

  To see this in action, execute "dotnet restore" on the 3-NuGet example and look in the obj/ folder for
  a file named Web.csproj.g.nuget.targets. You'll see inside that it contains an "Import" to this file.
 -->
<Project>

  <!-- This will automatically produce a zip file will all contents of the publish directory. -->
  <Target Name="ZipOnPublish" AfterTargets="Publish">
    <Zip Directory="$(PublishDir)" ZipPath="$(MSBuildProjectDirectory)\$(MSBuildProjectName).zip" />
  </Target>

</Project>
```