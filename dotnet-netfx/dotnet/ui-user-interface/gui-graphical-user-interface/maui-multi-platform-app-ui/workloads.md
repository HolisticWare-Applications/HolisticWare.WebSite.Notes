# MAUI workloads

```
sudo dotnet workload \
    install \
    maui \
    --from-rollback-file http://maui.blob.core.windows.net/metadata/rollbacks/9.0.0-preview.2.10304.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet9/nuget/v3/index.json \
    --source https://api.nuget.org/v3/index.json \
    --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet8/nuget/v3/index.json

```

