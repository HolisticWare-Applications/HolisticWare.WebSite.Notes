

```
dotnet workload install \
    maui \
    --from-rollback-file  https://maui.blob.core.windows.net/metadata/rollbacks/8.0.0-preview.6.8686.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet7/nuget/v3/index.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet8/nuget/v3/index.json \
    --source https://api.nuget.org/v3/index.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-97214040/nuget/v3/index.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-emsdk-9b227c16/nuget/v3/index.json
```

```
dotnet workload install \
    maui \
    android \
    ios \
    maccatalyst \
    tvos \
    macos \
    --from-rollback-file  https://maui.blob.core.windows.net/metadata/rollbacks/8.0.0-preview.6.8686.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-97214040/nuget/v3/index.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-emsdk-9b227c16/nuget/v3/index.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/8.0.100-preview.6.23330.14-shipping/nuget/v3/index.json
```

```
https://github.com/dotnet/runtime/blob/release/8.0-preview6/eng/Versions.props#L10

https://github.com/dotnet/runtime/blob/5340be2ccc67101dc890c9f1b0ec57470b685f3e/eng/Versions.props#L10
```
