# Satori


*   https://github.com/hez2010/SatoriInsight

*   https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9


PublishWithSatoriGC is an MSBuild SDK packaged on NuGet that allows .NET developers to easily swap the default .NET garbage collector for Satori GC. Satori GC is an alternative garbage collector for .NET designed to provide high throughput, extremely low latency (often under 2ms max pause times), and a reduced memory footprint. [1] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9), [2] (https://qiita.com/hez2010/items/7334840a4e96851f5a0b)

Quick Start Implementation

To use it, you add a single <Sdk> reference line to the top of your .csproj project file. [1] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9)
• For .NET 10:xml
<Sdk Name="PublishWithSatoriGC" Version="10.0.14-satori.40094043612.1" />
Use code with caution.
• For .NET 11:xml
<Sdk Name="PublishWithSatoriGC" Version="11.0.0-satori.40092754246.1" />
Use code with caution.

Crucial Deployment Rules

• Self-Contained Requirement: Satori GC only triggers during self-contained deployments. You must supply the --self-contained flag when publishing your application. [1] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9)
• Feature Compatibility: It fully integrates out of the box with NativeAOT, ReadyToRun, trimming, and single-file publish modes. [1] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9)
Example Publish Commands:
bash
# Single-file deployment with trimming enabled
dotnet publish -c Release -r win-x64 --self-contained /p:PublishSingleFile=true /p:PublishTrimmed=true

# Native AOT deployment
dotnet publish -c Release -r win-x64 /p:PublishAot=true
Use code with caution.

Runtime Verification & Tuning

Once your app is built, you can verify if the alternative collector loaded by checking the runtime configuration variables: [1] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9)
csharp
bool enabled = GC.GetConfigurationVariables().ContainsKey("SatoriGC");
Console.WriteLine($"Satori GC Active: {enabled}");
Use code with caution.
You can also dynamically shift performance priorities at runtime using GCSettings.LatencyMode: [1] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9)
• Interactive (Default): Tailored for maximum execution throughput and keeping memory overhead tight. [1] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9)
• LowLatency: Strict pause time management (brings max pause spikes down significantly at a minor tradeoff to total throughput). [1] (https://qiita.com/hez2010/items/7334840a4e96851f5a0b), [2] (https://medium.com/@skyake/enable-satori-gc-in-net-with-just-a-single-line-bdff4a65f5c9)
Are you looking to use this package on a specific operating system (like Linux or macOS) or target platform (like NativeAOT), or do you want to see the benchmark comparisons against standard Workstation and Server GC?
