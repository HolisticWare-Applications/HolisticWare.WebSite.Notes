# NuGet multiple pack paths

multiple-pack-paths.md

Specify multiple pack paths for nuget packaging. Really neat trick for making sure for 
both build and buildTransitive folders, without duplicating `.targets` files

```
<ItemGroup>
    <None Include="build\**\*.*" PackagePath="build;buildTransitive" Pack="true" />
</ItemGroup>
```
