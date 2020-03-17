# Uninstalling 

uninstalling.md

*   https://devblogs.microsoft.com/dotnet/announcing-the-net-core-uninstall-tool-1-0/

*   https://docs.microsoft.com/en-us/dotnet/core/additional-tools/uninstall-tool?tabs=windows

*   https://docs.microsoft.com/en-us/dotnet/core/versions/remove-runtime-sdk-versions?tabs=windows

*   https://aka.ms/dotnet-core-uninstall-tool

    *   https://github.com/dotnet/cli-lab

```
rm -fr ./dotnet-core-uninstall/ ./dotnet-core-uninstall.tar.gz 
curl \
    -OL \
    https://github.com/dotnet/cli-lab/releases/download/1.0.115603/dotnet-core-uninstall.tar.gz
mkdir -p ./dotnet-core-uninstall
tar -zxf dotnet-core-uninstall.tar.gz -C ./dotnet-core-uninstall
cd ./dotnet-core-uninstall
./dotnet-core-uninstall -h
```

Note: elevation/sudo might be needed:

```
./dotnet-core-uninstall remove --all-previews --sdk
```

*   Visual Studio for Mac

    https://raw.githubusercontent.com/MicrosoftDocs/visualstudio-docs/master/mac/resources/uninstall-vsmac.sh

*   .NET Core

    https://docs.microsoft.com/en-us/dotnet/core/versions/remove-runtime-sdk-versions?tabs=macos#uninstalling-net-core


