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
rm -fr  ./Mono.ApiTools.NuGetDiff-master
rm      Mono.ApiTools.NuGetDiff-master.zip
curl \
    -v -L -C - \
    -o Mono.ApiTools.NuGetDiff-master.zip \
    -O \
        https://codeload.github.com/mattleibow/Mono.ApiTools.NuGetDiff/zip/refs/heads/master

unzip \
    -o \
    ./Mono.ApiTools.NuGetDiff-master.zip

cd ./Mono.ApiTools.NuGetDiff-master
dotnet cake


dotnet tool \
    uninstall \
        api-tools \
            --global \



dotnet tool \
    install \
        api-tools \
            --global \
            --add-source ./output/ \
            --ignore-failed-sources \
            --prerelease \
```    
