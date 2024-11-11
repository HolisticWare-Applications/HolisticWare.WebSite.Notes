# Performance

performance.md

*   https://github.com/jonathanpeppers/lols/issues/4

    *   https://github.com/jonathanpeppers/lols

*   graphs for startup time:

    *   https://aka.ms/dotnetperfstatus


I have benchmarks (startup time, memory consuption, package size, render time) from

    Chat App UI Challenge made with .NET MAUI. (github.com)

with net6/7. Will compare with latest versions from net7/8.

    https://github.com/jsuarezruiz/netmaui-chat-app-challenge
    
https://adamsitnik.com/Sample-Perf-Investigation/

https://adamsitnik.com/ETW-Profiler/



*   https://github.com/xamarin/xamarin-android/pull/8713/files

*   https://www.sharpnado.com/net-maui-painfully-slow-debugging/

## ZString

*   https://github.com/Cysharp/ZString

*   https://neuecc.medium.com/zstring-zero-allocation-stringbuilder-for-net-core-and-unity-f3163c88c887

## `Rope<T>`

*   https://www.reddit.com/r/csharp/comments/1ee84vw/am_i_crazy_for_trying_to_replace_nets_string_and/

*   https://github.com/FlatlinerDOA/Rope

## Ideas

*   https://github.com/vescon/MethodBoundaryAspect.Fody

*   https://github.com/Fody/MethodTimer

*   Fody MethodTimer

    *   https://github.com/Fody/MethodTimer

    *   https://www.infoworld.com/article/3710708/how-to-measure-api-performance-in-asp-net-core.html

*   https://www.reddit.com/r/csharp/comments/1ee84vw/am_i_crazy_for_trying_to_replace_nets_string_and/


## Benchmarks

BinderatorConfig Deserialization

20241107

| Method                                                      | Mean     | Error    | StdDev   | Median   | Gen0    | Gen1    | Allocated |
|------------------------------------------------------------ |---------:|---------:|---------:|---------:|--------:|--------:|----------:|
| Deserialize_BinderatorConfig_SystemTextJson_SourceGenerator | 417.2 us |  8.24 us | 14.65 us | 412.7 us | 31.2500 | 15.6250 | 257.04 KB |
| Deserialize_BinderatorConfig_NewtonsoftJson                 | 517.7 us | 10.34 us | 17.27 us | 513.0 us | 36.1328 | 17.5781 | 299.08 KB |
| Deserialize_BinderatorConfig_SpanJson                       | 261.0 us |  5.19 us | 12.42 us | 254.1 us | 31.2500 | 15.6250 | 255.43 KB |



20241106

| Method                                                      | Mean     | Error   | StdDev   |
|------------------------------------------------------------ |---------:|--------:|---------:|
| Deserialize_BinderatorConfig_SystemTextJson_SourceGenerator | 415.9 us | 8.10 us |  7.58 us |
| Deserialize_BinderatorConfig_NewtonsoftJson                 | 494.3 us | 9.71 us | 10.39 us |
| Deserialize_BinderatorConfig_SpanJson                       | 256.6 us | 3.98 us |  3.53 us |

