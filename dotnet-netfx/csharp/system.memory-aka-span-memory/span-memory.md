## `Span<T>` and `Memory<T>`

span-memory.md

*   Deep .NET: A Complete .NET Developer's Guide to Span with Stephen Toub and Scott Hanselman

    *   https://www.youtube.com/watch?v=5KdICNWOfEQ 

*   https://learn.microsoft.com/en-us/dotnet/standard/memory-and-spans/

*   https://www.reddit.com/r/csharp/comments/1g6djw1/trying_to_understand_spant_usages/

*   https://github.com/dfederm/DelimiterSeparatedTextParser/blob/master/src/DsvReader.cs

*   https://msdn.microsoft.com/en-us/magazine/mt814808.aspx

*   https://blogs.msdn.microsoft.com/mazhou/2018/03/25/c-7-series-part-10-spant-and-universal-memory-management/

*   https://medium.com/@antao.almada/how-to-use-span-t-and-memory-t-c0b126aae652

https://stackoverflow.com/questions/51864673/c-sharp-readonlyspanchar-vs-substring-for-string-dissection

https://medium.com/@antao.almada/slicing-managed-arrays-ae4f412a5d9e

https://github.com/aalmada/SpanSample/blob/master/SpanSample/StringBenchmarks.cs

https://blog.marcgravell.com/2017/04/spans-and-ref-part-1-ref.html

https://blog.marcgravell.com/2017/04/spans-and-ref-part-2-spans.html

https://github.com/dotnet/corefxlab/blob/master/docs/specs/span.md

https://www.reddit.com/r/programming/comments/7dzzpq/spant_in_c/

https://adamsitnik.com/Span/#performance

https://blogs.msdn.microsoft.com/dotnet/2017/10/16/ryujit-just-in-time-compiler-optimization-enhancements/

https://blogs.msdn.microsoft.com/dotnet/2017/10/16/ryujit-just-in-time-compiler-optimization-enhancements/

https://codereview.stackexchange.com/questions/204539/using-span-and-memory-to-read-utf8-from-a-socket



# Span

*   https://endjin.com/blog/2023/09/optimising-dotnet-code-4-avoiding-allocations-using-span-t

*   https://endjin.com/blog/2023/04/dotnet-csharp-11-pattern-matching-span-char

*   https://learn.microsoft.com/en-us/archive/msdn-magazine/2018/january/csharp-all-about-span-exploring-a-new-net-mainstay

*   https://learn.microsoft.com/en-us/dotnet/api/system.string.op_implicit






https://github.com/material-components/material-components-android


https://en.wikipedia.org/wiki/ICanHazPDF



https://github.com/rexm/Handlebars.Net


http://mattwarren.org/2018/10/02/A-History-of-.NET-Runtimes/


*   https://github.com/dfederm/DelimiterSeparatedTextParser/blob/master/src/DsvReader.cs

*   https://msdn.microsoft.com/en-us/magazine/mt814808.aspx

*   https://blogs.msdn.microsoft.com/mazhou/2018/03/25/c-7-series-part-10-spant-and-universal-memory-management/

*   https://medium.com/@antao.almada/how-to-use-span-t-and-memory-t-c0b126aae652


*   need to install the System.Memory NuGet package.

*   There are extension methods for strings called 

    *   `.AsSpan()` or `.AsReadOnlySpan()` to convert a string to the appropriate `Span<T>`.

```csharp
Span<char> mySpan = "My sample source string".AsSpan();
ReadOnlySpan<char> myReadOnlySpan = "My read only string".AsReadOnlySpan();
```

*   https://codewala.net/2018/04/17/span-a-new-upcoming-feature-of-c/

*   https://codingblast.com/span-of-t/

*   https://dfederm.com/learn-span-by-implementing-a-high-performance-csv-parser/

*   https://www.codemag.com/article/1807051/Introducing-.NET-Core-2.1-Flagship-Types-Span-T-and-Memory-T

*   https://channel9.msdn.com/Events/Connect/2017/T125

*   https://stackify.com/net-application-optimization/

*   https://www.infoq.com/articles/performance-net-core

*   https://www.stevejgordon.co.uk/an-introduction-to-optimising-code-using-span-t

*   https://stackoverflow.com/questions/47321691/what-is-the-difference-between-spant-and-memoryt-in-c-sharp-7-2

*   https://stackoverflow.com/questions/51864673/c-sharp-readonlyspanchar-vs-substring-for-string-dissection

*   https://medium.com/@antao.almada/slicing-managed-arrays-ae4f412a5d9e

*   https://github.com/aalmada/SpanSample/blob/master/SpanSample/StringBenchmarks.cs

*   https://blog.marcgravell.com/2017/04/spans-and-ref-part-1-ref.html

*   https://blog.marcgravell.com/2017/04/spans-and-ref-part-2-spans.html

*   https://github.com/dotnet/corefxlab/blob/master/docs/specs/span.md

*   https://www.reddit.com/r/programming/comments/7dzzpq/spant_in_c/

*   https://adamsitnik.com/Span/#performance

*   https://blogs.msdn.microsoft.com/dotnet/2017/10/16/ryujit-just-in-time-compiler-optimization-enhancements/

*   https://blogs.msdn.microsoft.com/dotnet/2017/10/16/ryujit-just-in-time-compiler-optimization-enhancements/

*   https://codereview.stackexchange.com/questions/204539/using-span-and-memory-to-read-utf8-from-a-socket

*   https://docs.microsoft.com/en-us/dotnet/standard/memory-and-spans/memory-t-usage-guidelines

*   https://markzhou.com/2019/02/16/c-7-series-part-10-span-and-universal-memory-management/

*   https://adamsitnik.com/Span/

*   https://github.com/material-components/material-components-android

*   https://en.wikipedia.org/wiki/ICanHazPDF

*   https://mattwarren.org/2019/03/01/Is-CSharp-a-low-level-language/

*   https://github.com/rexm/Handlebars.Net

*   http://mattwarren.org/2018/10/02/A-History-of-.NET-Runtimes/


## Videos

*   https://www.youtube.com/watch?v=7GTpwgsmHgU


```csharp
ReadOnlySpan<char>.Split() 
```

*   https://www.infoworld.com/article/3626790/how-to-split-strings-efficiently-in-c-sharp.html

*   https://stackoverflow.com/questions/77343199/string-split-for-span

*   https://stackoverflow.com/questions/51864673/c-sharp-readonlyspanchar-vs-substring-for-string-dissection

*   https://stackoverflow.com/questions/60529750/split-string-by-multiple-delimiters-without-creating-new-object-allocations

*   https://learn.microsoft.com/en-us/dotnet/api/system.memoryextensions.split?view=net-9.0

*   https://github.com/dotnet/runtime/issues/934

*   https://github.com/dotnet/runtime/issues/37746

*   https://endjin.com/blog/2023/04/dotnet-csharp-11-pattern-matching-span-char

*   https://endjin.com/blog/2020/03/introducing-ais-dotnet-high-performance-ais-parsing-in-csharp

*   https://www.meziantou.net/split-a-string-into-lines-without-allocation.htm

*   https://steven-giesel.com/blogPost/969cc5e7-da27-4742-ae9a-ab7a66715ff6

*   https://www.jitbit.com/alexblog/309-improving-c-performance-with-spant/


