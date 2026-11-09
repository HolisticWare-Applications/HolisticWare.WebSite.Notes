# Linking

linking.md

```bash
dotnet \
    publish \
        -c release \
        -r win-x64 \
        -o notlinked \
        -p:LinkDuringPublish=false
```

```bash
dotnet \
    publish \
        -c release \
        -r win-x64 \
        -o linked
```

*   https://aka.ms/dotnet-illink

*   Using the .NET IL Linker

    *   https://github.com/dotnet/core/blob/main/samples/linker-instructions.md

*   Using IL Linker Advanced Features

    *   https://github.com/dotnet/core/blob/main/samples/linker-instructions-advanced.md
