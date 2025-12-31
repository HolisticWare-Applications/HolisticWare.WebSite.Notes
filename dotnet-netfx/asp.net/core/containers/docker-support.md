# Docker Support

docker-support.md

.NET Web docker

```shell
dotnet tool \
    install \
        -g \
            dotnet-build-image

dotnet build-image --help
```


```xml
<Project Sdk="Microsoft.NET.Sdk.Web">

  <PropertyGroup>
    ...
    <ContainerImageName>myapp</ContainerImageName>
    <ContainerImageTag>latest</ContainerImageTag>
    <ContainerBaseImage>ubi</ContainerBaseImage>
  </PropertyGroup>
</Project>
```

*   https://www.reddit.com/r/dotnet/comments/wy6b2b/announcing_builtin_container_support_for_the_net/

