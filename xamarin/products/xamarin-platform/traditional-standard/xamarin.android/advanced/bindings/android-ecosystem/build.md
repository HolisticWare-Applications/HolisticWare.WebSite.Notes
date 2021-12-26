# Build

build.md


API diff:

```
dotnet cake nuget-diff.cake -v=diagnostic   
```

checks (spell-checking, namespaces, etc)

```
```

update artifact versions

```
dotnet script ./build/scripts/update-config.csx -- ./config.json update
```

bump nuget versions

```
dotnet script ./build/scripts/update-config.csx -- ./config.json bump
```

```
find ./output/api-diff -type f -name "*.md" -exec grep -Hni "removed" {} \; 
```



