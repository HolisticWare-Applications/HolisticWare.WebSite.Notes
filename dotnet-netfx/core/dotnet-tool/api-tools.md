# API tools

api-tools.md


```
dotnet tool install --global api-tools --version 1.2.0
```

```
dotnet cake ./nuget-diff.cake -v=diagnostic
```

*   https://www.nuget.org/packages/api-tools/



*   https://github.com/xamarin/AndroidX/pull/813

*   https://github.com/mattleibow/Mono.ApiTools.NuGetDiff/pull/17


```bash
dotnet tool \
    uninstall \
        api-tools \
            --global \
```

```bash
dotnet tool \
    install \
        api-tools \
            --global \
            --add-source ./output/ \
            --ignore-failed-sources \
            --prerelease \
```    
