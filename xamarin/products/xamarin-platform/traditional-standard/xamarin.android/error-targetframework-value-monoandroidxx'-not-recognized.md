
# Error: TargetFramework value 'MonoAndroidXX' was not recognized

error-targetframework-value-monoandroidxx'-not-recognized.md

New SDK style projects.

## Problem

Error:

```
/usr/local/share/dotnet/sdk/2.1.301/Sdks/Microsoft.NET.Sdk/targets/Microsoft.NET.TargetFrameworkInference.targets(5,5): 
Error: 
The TargetFramework value 'MonoAndroid81' was not recognized. It may be misspelled. If not, then 
the TargetFrameworkIdentifier and/or TargetFrameworkVersion properties must be specified explicitly. 
```

3 i listed above: `grpc-okhttp`, `grpc-protobuf-lite` and `grpc-stub`


## Resolution / Workaround

Do the `nuget restore`.


