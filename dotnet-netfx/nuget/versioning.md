# Versioning

versioning.md

```
<ItemGroup>
    <PackageReference Include="SomePackage" Version="*_*" />
</ItemGroup>
```

floats to latest version on both sides of the hyphen, e.g. will match 0.0.0-aaaa through 999.999.999. 
This is the most liberal use, usually you'd constrain it, e.g. 1.0.*-*


*   https://docs.microsoft.com/en-us/nuget/consume-packages/package-references-in-project-files

*   https://docs.microsoft.com/en-us/nuget/concepts/package-versioning