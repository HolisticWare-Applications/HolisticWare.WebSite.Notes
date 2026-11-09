# NativeAOT

native-aot.md



*   https://www.reddit.com/r/dotnet/comments/1r9uguu/blown_away_by_net10_nativeaot/

*   https://github.com/jitbit/claude-chat-manager

```xml
    <PropertyGroup Condition="'$(Configuration)' == 'Release'">
        <!--
        Performance
        -->
        <OptimizationPreference>Size</OptimizationPreference>
        <InvariantGlobalization>true</InvariantGlobalization>
        <StackTraceSupport>false</StackTraceSupport>
        <EventSourceSupport>false</EventSourceSupport>
        <IlcTrimMetadata>true</IlcTrimMetadata>
    </PropertyGroup>          
```