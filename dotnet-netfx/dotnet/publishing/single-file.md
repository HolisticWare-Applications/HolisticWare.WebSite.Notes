# Single File

publishing

Well it depends on how you publish your application. Example:

```bash
dotnet \
    publish \
        -c Release \
        -r linux-x64 \
        --self-contained \
        -p:PublishReadyToRun=true \
        -p:PublishSingleFile=true \
        -p:DebugType=None \
        -p:DebubSymbols=false
```

Will produce a single file which (with only Hell world) is around 62MB. 

While:

```bash
dotnet \
    publish \
        -c Release \
        -r linux-x64 \
        --no-self-contained \
        -p:PublishReadyToRun=true \
        -p:PublishSingleFile=true \
        -p:DebugType=None \
        -p:DebubSymbols=false
```

(Notice --no-self-contained), will produce a single file which should be around 146KB.

So it all comes down to including the whole runtime or not while publishing. And then there is AOT (Ahead of time) 
option for the upcoming .Net 7, which will reduce self-contained files significantly.

*   https://devblogs.microsoft.com/dotnet/announcing-dotnet-7-preview-3/#prepare-your-apps-for-native-aot




