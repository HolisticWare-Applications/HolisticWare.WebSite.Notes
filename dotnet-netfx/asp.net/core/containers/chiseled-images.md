# .NET Chiseled Containers

chiseled.md

*   https://devblogs.microsoft.com/dotnet/announcing-dotnet-chiseled-containers/

*   Chiselled Ubuntu Containers

    *   https://www.youtube.com/watch?v=o8NILnbjhQ4

*   .NET Containers advancements in .NET 8 | .NET Conf 2023

    *   https://www.youtube.com/watch?v=scIAwLrruMY

*   .NET in Ubuntu and Chiseled Containers - Canonical & Microsoft

    *   https://www.youtube.com/watch?v=pnsYc8GskCw

*   Using .NET with Chiseled Ubuntu Containers | .NET Conf 2022

    *   https://www.youtube.com/watch?v=FLGFzlWF4Gs

*   https://github.com/richlander/container-workshop

*   https://github.com/richlander/container-workshop/blob/main/aspnetcore.md


    *   https://github.com/search?q=ContainerBaseImage+chiseled&type=code

    *   https://github.com/laurentkempe/blog/blob/7732a78195983327d33e836078947d8a406de833/source/_posts/dotnet-7-sdk-built-in-container-support-and-ubuntu-chiseled.md?plain=1#L105


        ```console
        dotnet \
            publish \
            -p PublishProfile=DefaultContainer \
            -p ContainerBaseImage=mcr.microsoft.com/dotnet/aspnet:10.0-noble-chiseled \
            -p ContainerRegistry=docker.io \
            -p ContainerRepository=youraccount/aspnetapp
        ```

    *   https://github.com/laurentkempe/aiPlayground/blob/main/MCPServerDocker/MCPServerDocker/MCPServerDocker.csproj

    *   https://github.com/baronfel/sdk-container-demo/blob/530356ee6891b317b316d1c98199e6fcc50341ef/src/sdk-container-demo/Properties/PublishProfiles/localdocker-trimmedandchiseled.pubxml#L8

    *   https://github.com/josersleal/container-workshop-asp-net/blob/a8c29d3a09cf13b992c58ba8e7d04870222b70bd/publish-in-sdk-container.md?plain=1#L75

    *   https://github.com/microsoft/aspire.dev/blob/d0e9fd21d5f8087a3d6d4669faec998792582151/src/statichost/StaticHost/StaticHost.csproj#L11

    *   https://github.com/baronfel/sdk-container-demo/blob/530356ee6891b317b316d1c98199e6fcc50341ef/src/sdk-container-demo/Properties/PublishProfiles/localdocker-trimmedandchiseled.pubxml#L8

    *   https://github.com/Abdallah-Assaker/GithubActionsDemo/blob/89ae32c8a9bd5e300b84dd6d829d481aeabd6605/HelloFromGithubActions.API/Properties/PublishProfiles/docker.pubxml#L4
