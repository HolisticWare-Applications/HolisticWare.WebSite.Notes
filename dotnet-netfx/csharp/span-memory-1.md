## `Span<T>` and `Memory<T>`

span-memory.md

https://github.com/dfederm/DelimiterSeparatedTextParser/blob/master/src/DsvReader.cs

https://msdn.microsoft.com/en-us/magazine/mt814808.aspx

https://blogs.msdn.microsoft.com/mazhou/2018/03/25/c-7-series-part-10-spant-and-universal-memory-management/

https://medium.com/@antao.almada/how-to-use-span-t-and-memory-t-c0b126aae652


need to install the System.Memory NuGet package.

There are extension methods for strings called .AsSpan() or .AsReadOnlySpan() to convert a string to the appropriate Span<T>.

```
Span<char> mySpan = "My sample source string".AsSpan();
ReadOnlySpan<char> myReadOnlySpan = "My read only string".AsReadOnlySpan();
```

https://codewala.net/2018/04/17/span-a-new-upcoming-feature-of-c/

https://codingblast.com/span-of-t/

https://dfederm.com/learn-span-by-implementing-a-high-performance-csv-parser/

https://www.codemag.com/article/1807051/Introducing-.NET-Core-2.1-Flagship-Types-Span-T-and-Memory-T

https://channel9.msdn.com/Events/Connect/2017/T125

https://stackify.com/net-application-optimization/

https://www.infoq.com/articles/performance-net-core

https://stackoverflow.com/questions/47321691/what-is-the-difference-between-spant-and-memoryt-in-c-sharp-7-2

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








https://github.com/material-components/material-components-android


https://en.wikipedia.org/wiki/ICanHazPDF



https://github.com/rexm/Handlebars.Net


http://mattwarren.org/2018/10/02/A-History-of-.NET-Runtimes/


