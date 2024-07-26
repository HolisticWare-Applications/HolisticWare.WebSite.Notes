# Profiling

profiliing.md

*   https://adamsitnik.com/

*   https://adamsitnik.com/PerfCollectProfiler/

```bash
sudo dotnet run \
    -c Release \
        -f net7.0 
        --filter '*PerfCollectProfiler*' \
        --profiler perf \
        --job short
```

*   https://learn.microsoft.com/en-us/dotnet/core/diagnostics/dotnet-trace

*   https://learn.microsoft.com/en-us/dotnet/core/diagnostics/dotnet-trace#use-diagnostic-port-to-collect-a-trace-from-app-startup

*   https://platform.uno/docs/articles/guides/profiling-applications.html

*   https://platform.uno/docs/articles/Uno-UI-Performance.html

*   https://dev.to/mergeconflict/293-dotnet-trace-with-dotnet-monitor-through-dotnet-dsrouter

*   https://github.com/jlfwong/speedscope/wiki/Importing-from-.NET-Core

*   https://wojciechnagorski.com/2020/04/cross-platform-profiling-.net-code-with-benchmarkdotnet/

    *   https://www.youtube.com/channel/UCC25ZltZWdfjwpTw7XXrybw?view_as=subscriber

*   https://wojciechnagorski.com/2018/12/how-i-improved-the-yamldotnet-performance-by-370/

*   https://wojciechnagorski.com/2019/08/analyzing-native-memory-allocation-with-benchmarkdotnet/

*   https://www.reddit.com/r/csharp/comments/18djaa6/c_memory_profiler_on_vscode/

## VTune

*   https://github.com/dotnet/performance/blob/main/docs/profiling-workflow-dotnet-runtime.md#vtune

## Speedscope

*   https://adamsitnik.com/speedscope/#demo

*   https://adamsitnik.com/PerfCollectProfiler/

*   https://profilerpedia.markhansen.co.nz/formats/speedscope/

## PerfView

*   https://learn.microsoft.com/en-us/shows/perfview-tutorial/

*   https://adamsitnik.com/Sample-Perf-Investigation/

## Disassembly Diagnoser

https://adamsitnik.com/Disassembly-Diagnoser/

https://github.com/goldshtn/msos


```csharp
[DisassemblyDiagnoser(printAsm: true, printSource: true)]
public class TheClassThatContainsBenchmarks { /* benchmarks go here */ }
```


custom config to use it:

```csharp
private class CustomConfig : ManualConfig
{
    public CustomConfig()
    {
        Add(Job.Default);
        Add(DisassemblyDiagnoser.Create(new DisassemblyDiagnoserConfig(printAsm: true, recursiveDepth: 1)));
    }
}
```

## Jetbrains

https://www.jetbrains.com/profiler/

https://learn.microsoft.com/en-us/xamarin/android/deploy-test/profiling

Xamarin Profiler

    https://learn.microsoft.com/en-us/xamarin/tools/profiler/?tabs=macos

Android Studio Profiler



https://learn.microsoft.com/en-us/dotnet/core/diagnostics/dotnet-symbol


dotnet tool install --global dotnet-symbol

dotnet-symbol [-h|--help] [options] <FILES>


*   tools

    *   `dotnet-counters`

    *   `dotnet-coverage`

    *   `dotnet-dump`

    *   `dotnet-gcdump`

    *   `dotnet-monitor`

    *   `dotnet-trace`

    *   `dotnet-stack`

    *   `dotnet-symbol`

    *   `dotnet-sos`

    *   `dotnet-dsrouter`


https://adamsitnik.com/PerfCollectProfiler/


## Profiling .NET Android (Xamarin.Android)

*   https://devblogs.microsoft.com/dotnet/performance-improvements-in-dotnet-maui/#startup-performance-improvements

*   Best Practices - Memory Management & Profiling | The Xamarin Show

    *   https://www.youtube.com/watch?v=YebuM6_Gpcw&ab_channel=XamarinDevelopers


*   https://learn.microsoft.com/en-us/dotnet/core/diagnostics/dotnet-dsrouter#collect-a-startup-trace-using-dotnet-trace-from-a-net-application-running-on-android

https://github.com/dotnet/maui/wiki/Profiling-.NET-MAUI-Apps
https://github.com/xamarin/xamarin-android/blob/d17-0/Documentation/guides/tracing.md
https://github.com/xamarin/xamarin-android/blob/d17-0/Documentation/guides/profiling.md
https://github.com/dotnet/runtime/blob/main/docs/design/mono/diagnostics-tracing.md
https://learn.microsoft.com/en-us/dotnet/core/diagnostics/debug-highcpu

### Profiling on Mono Platforms

#### Android Profiling Documentation

https://github.com/xamarin/xamarin-android/blob/main/Documentation/guides/tracing.md

https://github.com/xamarin/xamarin-android/blob/main/Documentation/guides/profiling.md

#### iOS/Mac Profiling Documentation

https://github.com/xamarin/xamarin-macios/wiki/Profiling

https://github.com/xamarin/xamarin-macios/wiki/Profiling-App-Launch

#### Tizen

*   https://developer.samsung.com/tizen/blog/en/2020/07/23/finding-performance-bottlenecks-with-dotnet-trace

### MAUI

```
src/Controls/samples/Controls.Sample.Profiling
```

https://github.com/dotnet/maui/blob/main/src/Controls/samples/Controls.Sample.Profiling/Maui.Controls.Sample.Profiling.csproj#L19-L28

```xml
  <PropertyGroup>
    <IsEmulator Condition="'$(IsEmulator)' == ''">true</IsEmulator>
    <AndroidEnableProfiler>true</AndroidEnableProfiler>
    <AndroidLinkResources>true</AndroidLinkResources>
  </PropertyGroup>

  <ItemGroup>
    <AndroidEnvironment Condition="'$(IsEmulator)' == 'true'" Include="Platforms\Android\environment.emulator.txt" />
    <AndroidEnvironment Condition="'$(IsEmulator)' != 'true'" Include="Platforms\Android\environment.device.txt" />
  </ItemGroup>
```


*   https://nicksnettravels.builttoroam.com/dotnet-trace/

*   https://dev.to/mergeconflict/293-dotnet-trace-with-dotnet-monitor-through-dotnet-dsrouter

*   https://medium.com/@li.chx/creating-a-garbage-collection-dump-for-maui-android-applications-a-step-by-step-guide-505cb77f9759




*   https://github.com/xamarin/xamarin-android/blob/main/Documentation/guides/tracing.md

*   https://github.com/xamarin/xamarin-android/pull/8713

*   https://github.com/dotnet/diagnostics/issues




## Tools

SOS 

    - About the SOS debugger extension.

    https://github.com/dotnet/diagnostics/blob/main/documentation/sos.md
    
dotnet-dump 

    - Dump collection and analysis utility.

    https://github.com/dotnet/diagnostics/blob/main/documentation/dotnet-dump-instructions.md
    
dotnet-gcdump 

    - Heap analysis tool that collects gcdumps of live .NET processes.

    dotnet tool install --global dotnet-gcdump
    
    https://github.com/dotnet/diagnostics/blob/main/documentation/dotnet-gcdump-instructions.md
    
    https://github.com/1hub/dotnet-heapview
    
    Installation

    dotnet tool install -g dotnet-heapview

    Usage
    
    dotnet-heapview <path to .gcdump file>

dotnet-trace 

    - Enable the collection of events for a running .NET Core Application to a local trace file.

    https://github.com/dotnet/diagnostics/blob/main/documentation/dotnet-trace-instructions.md
    
    dotnet tool install --global dotnet-trace
    
    https://github.com/sransara/speedscope-in-vscode
    
    https://github.com/jlfwong/speedscope?tab=readme-ov-file
    
    npm install -g speedscope
    
    speedscope /path/to/profile
    
    https://github.com/jlfwong/speedscope/releases
    
    https://github.com/tigerabrodi/speedscope-learnings
    
    https://github.com/hillin/SpeedscopeSharp
    
    https://github.com/bitfaster/Recorder
    
dotnet-counters 

    - Monitor performance counters of a .NET Core application in real time.

    https://github.com/dotnet/diagnostics/blob/main/documentation/dotnet-counters-instructions.md
    
    dotnet tool install --global dotnet-counters
    
    
    



can also install prerelease builds from the nightly feed https://aka.ms/dotnet-tools/index.json:

$ dotnet tool install -g dotnet-dsrouter --add-source=https://aka.ms/dotnet-tools/index.json --prerelease




https://github.com/xamarin/xamarin-android/blob/385f567262bc8e33859b89a9411ca5678bb729ac/Documentation/guides/tracing.md




Microsoft Tools
The official tool to use is the Xamarin Profiler.

However, it is not free and is only available with a Visual Studio Enterprise account:

You will need to be a Visual Studio Enterprise subscriber to unlock this feature in either Visual Studio Enterprise on Windows or Visual Studio for Mac on a Mac.

Apple/Google Tools
You can also use the native tools, which are free.

The downside is that their tools don't know how to interpret .NET code. This means that it will help you discover a memory leak, but it can't tell you which line of code in C# is causing it.

iOS & macOS Apps
Apple provides Instruments
Android Apps
Google provides Android Profiler