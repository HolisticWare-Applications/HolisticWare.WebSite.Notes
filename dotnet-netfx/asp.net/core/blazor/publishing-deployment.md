

*   https://blazor-demo.github.io/

*   https://www.freecodecamp.org/news/how-to-deploy-a-blazor-application-on-azure-cf6f3b1f03a0


```
docker run \
    -it \
    --rm -p 8000:8080 \
    --name aspnetcore_sample \
    mcr.microsoft.com/dotnet/samples:aspnetapp
```


```xml
    <BlazorEnableTimeZoneSupport>false</BlazorEnableTimeZoneSupport>
    <BlazorWebAssemblyPreserveCollationData>false</BlazorWebAssemblyPreserveCollationData>
    <PublishTrimmed>true</PublishTrimmed>
    <BlazorEnableCompression>true</BlazorEnableCompression>
    <!--
    alpine and chiseled 
    these images only work when InvariantGlobalization has been configured in the application. 
    InvariantGlobalization should be set to “True” in the csproj for the application to work with these images.
    -->
    <InvariantGlobalization>true</InvariantGlobalization>
    <TrimMode>link</TrimMode>
    <!--
    <RunAOTCompilation>true</RunAOTCompilation>
    -->

    <ContainerBaseImage>mcr.microsoft.com/dotnet/aspnet:9.0-noble-chiseled</ContainerBaseImage>
```

*   https://devkimchi.com/2024/08/12/different-containerising-options-for-dotnet-devs/

```shell
dotnet \
    publish \
        ./MSBuildForContainers.ApiApp \
            -t:PublishContainer \
            --os linux \
            --arch x64 \
            -p:ContainerBaseImage=mcr.microsoft.com/dotnet/aspnet:8.0-noble-chiseled \
            -p:ContainerRepository=apiapp \
            -p:ContainerImageTag=latest
```

```shell
dotnet \
    run \
        --project ./MSBuildForContainers.AppHost \
        -- \
        --publisher manifest \
        --output-path ../aspire-manifest.json

aspirate \
    generate \
        --project-path ./MSBuildForContainers.AppHost \
        --aspire-manifest ./aspire-manifest.json \
        --output-format compose \
        --disable-secrets \
        --include-dashboard false
```

