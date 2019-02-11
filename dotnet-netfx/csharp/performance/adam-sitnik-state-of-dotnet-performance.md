# Adam Sitnik: State of the .NET Performance

adam-sitnik-state-of-dotnet-performance.md

https://www.youtube.com/watch?v=CSPSvBeqJ9c


1.  CPU

2.  L1 cache

3.  L2 cache

4.  RAM - main memory

5.  Disk seek 


|--------------------------------------------|----------------------------------------------|
| Layer                                      | Access/read Time [ns]                                    |
|--------------------------------------------|----------------------------------------------|
| CPU                                        | 0                                            |
| L1 cache                                   | 0.5                                          |
| L2 cache                                   | 7                                            |
| RAM (Main memory)                          | 100                                          |
| Disk                                       | 10 000 000                                   |
|--------------------------------------------|----------------------------------------------|


*   Span<T> possible usage

    *   reading text - parsing text (strings) without allocations (string.Split())

        *   HTTP parsing

        *   HTML parsing

    *   writing text - Formatting

        *   HTTP writing 

        *   HTML writing

    *   Encoding/Decoding (UTF, Base64)

    *   compression/decompression

    *   XML/JSON reading/writing

    *   binary reading/writing    