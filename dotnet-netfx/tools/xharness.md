# XHarness

xharness.md

*   https://github.com/dotnet/xharness



```bash
dotnet tool \
    uninstall \
        Microsoft.DotNet.XHarness.CLI \
        --global \

dotnet tool \
    install \
        Microsoft.DotNet.XHarness.CLI \
            --global \
            --add-source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet-eng/nuget/v3/index.json \
            --prerelease \
            --verbosity:diag \
```