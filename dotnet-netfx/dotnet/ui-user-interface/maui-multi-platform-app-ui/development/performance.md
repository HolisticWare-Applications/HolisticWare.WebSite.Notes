#

## Analysis

*   few `StringBuilder`

    *   replace `StringBuilder` with `ZString`

        *   https://github.com/Cysharp/ZString

        *   https://github.com/Cysharp/Utf8StringInterpolation

*   JSON deserialization only in Essentials (Preferences)

    *   pros-n-cons

        *   pros

            *   processor => performance

            *   battery

        *   cons

            *   introducing 3rd party

    *   interesting [impressive] numbers

        *   SpanJson

            *   https://github.com/Tornhoof/SpanJson

        *   Jil

            *   https://github.com/kevin-montrose/Jil

## Ideas

*   logging with ZString


## Benchmarks

BinderatorConfig Deserialization

20241111

| Method                                                      | Mean     | Error    | StdDev   | Gen0    | Gen1    | Allocated |
|------------------------------------------------------------ |---------:|---------:|---------:|--------:|--------:|----------:|
| Deserialize_BinderatorConfig_SystemTextJson_SourceGenerator | 416.5 us |  8.18 us |  7.65 us | 31.2500 | 15.6250 | 257.04 KB |
| Deserialize_BinderatorConfig_NewtonsoftJson                 | 520.2 us | 10.32 us | 14.12 us | 36.1328 | 17.5781 | 299.08 KB |
| Deserialize_BinderatorConfig_SpanJson                       | 263.5 us |  5.01 us |  6.34 us | 31.2500 | 15.6250 | 255.43 KB |
| Deserialize_BinderatorConfig_Jil                            | 274.0 us |  5.42 us | 13.51 us | 31.2500 | 15.6250 | 255.43 KB |

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


