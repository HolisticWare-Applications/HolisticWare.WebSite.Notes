# Performance

performance.md


## Benchmarks

### XML POM

under investigation

### JSON BinderatorConfig Deserialization

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

