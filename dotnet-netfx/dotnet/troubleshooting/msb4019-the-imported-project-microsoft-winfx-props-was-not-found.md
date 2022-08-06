# MSB4019: The imported project `Microsoft.WinFX.props` was not found

msb4019-the-imported-project-microsoft-winfx-props-was-not-found.md

```
/usr/local/share/dotnet/sdk/3.1.421/Sdks/Microsoft.NET.Sdk.WindowsDesktop/targets/Microsoft.NET.Sdk.WindowsDesktop.props(3,3): 
Error MSB4019: The imported project 
"/usr/local/share/dotnet/sdk/3.1.421/Sdks/Microsoft.NET.Sdk.WindowsDesktop/targets/Microsoft.WinFX.props" 
was not found. Confirm that the expression in the Import declaration "Microsoft.WinFX.props" is correct, and that the file exists on disk. (MSB4019) (NetStandardLibrary.SDKShortStyle)
```

```bash
sudo \
    cp \
    /usr/local/share/dotnet/sdk/3.1.421/Sdks/Microsoft.NET.Sdk.WindowsDesktop/targets/Microsoft.WinFx.props \
    /usr/local/share/dotnet/sdk/3.1.421/Sdks/Microsoft.NET.Sdk.WindowsDesktop/targets/Microsoft.WinFX.props
```

More info:

*   https://github.com/dotnet/sdk/issues/11108

*   https://github.com/dotnet/sdk/issues/10015