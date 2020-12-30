# MSBuild SDK Traversal

msbuild-sdk-traversal.md

*   https://github.com/microsoft/MSBuildSdks/tree/master/src/Traversal

*   https://robertwray.co.uk/blog/using-microsoft-build-traversal-in-lieu-of-solutions-for-building

*   https://xamarin.github.io/mirepoix/articles/traversal-projects-with-solutions.html

*   https://docs.microsoft.com/en-us/visualstudio/msbuild/build-process-overview?view=vs-2019

Usage:

*   replacement for solutions

`Microsoft.Build.Traversal`

`AndroidX.Solution.proj`

```
<Project Sdk="Microsoft.Build.Traversal/2.1.1">
    <Sdk Name="Xamarin.MSBuild.Sdk"/>
    <ItemGroup>
        <SolutionConfiguration Include="Debug"/>
    </ItemGroup>  
    <ItemGroup>
        <!-- Build all projects recursively under the "src" folder -->
        <ProjectReference Include=".\**\*.*proj" />
    </ItemGroup>
</Project>
```