# `dotnet` debugging

debugging.md


```
export COREHOST_TRACE=1
```

```
export DOTNET_CLI_CAPTURE_TIMING=1
```

`dotnet run` actually executes the following cmd:

```
dotnet exec --additionalprobingpath \
    $HOME\.nuget\packages \
    .bin\Debug\netcoreapp1.0\myapp.dll
```

*   https://docs.microsoft.com/en-us/dotnet/core/dependency-loading/default-probing
