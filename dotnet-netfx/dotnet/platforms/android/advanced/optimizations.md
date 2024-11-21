# Optimizations

optimizations.md


*   https://www.reddit.com/r/dotnetMAUI/comments/1ghesqd/optimizing_android_and_ios_release_builds/

```xml
<AndroidLinkTool>r8</AndroidLinkTool>
<AndroidEnableMultiDex>True</AndroidEnableMultiDex>
<EmbedAssembliesIntoApk>True</EmbedAssembliesIntoApk>
<RunAOTCompilation>true</RunAOTCompilation>
<EnableLLVM>true</EnableLLVM>
```

```xml
<RunAOTCompilation>true</RunAOTCompilation>
```

```xml
<UseInterpreter>True</UseInterpreter>
```