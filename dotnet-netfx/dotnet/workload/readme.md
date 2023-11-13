# `dotnet workload`

readme.md

*   https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-workload
https://developercommunity.visualstudio.com/t/Failed-to-pair-to-Mac-with-error-Could-/10138259

```
/usr/local/share/dotnet/sdk-manifests/
$HOME/.dotnet/sdk-advertising/
```
```
C:\Program Files\dotnet\sdk-manifests\
````

by checking the 
WorkloadManifest.json file of each of them?
Does the microsoft.net.workload.mono.toolchain have a depends-on entry? If so, on which version and workload it depends on?
Have you manually installed a specific .NET or workloadversions other than what Visual Studio installs?
On your Mac, what version you see in ~/Library/Caches/Xamarin/XMA/SDKs/dotnet/sdk-manifests?



*   https://github.com/dotnet/designs/blob/main/accepted/2020/workloads/workloads.md

*   https://github.com/dotnet/designs/blob/main/accepted/2020/workloads/