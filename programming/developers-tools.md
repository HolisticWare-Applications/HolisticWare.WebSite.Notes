# Developers' tools

developers-tools.md

*   https://github.com/badamczewski/Shiny.Calculator



*   `.editorconfig`

    *   https://learn.microsoft.com/en-us/visualstudio/code-quality/use-roslyn-analyzers

    *   https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/quality-rules/

    *   https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/quality-rules/performance-warnings

    *   https://wengier.com/codify-your-coding-standards/
    
    *   https://github.com/dotnet/project-system/blob/main/.editorconfig


```
# Warn about any performance category issues across the entire API
dotnet_code_quality.Performance.api_surface = all:error

# CA1014: Mark assemblies with CLSCompliant
dotnet_diagnostic.CA1014.severity = error

# CA1040: Avoid empty interfaces 
dotnet_diagnostic.CA1040.severity = error

# CA1031: Do not catch general exception types
dotnet_diagnostic.CA1031.severity = error

# CA1000: Do not declare static members on generic types
dotnet_diagnostic.CA1000.severity = error


| [CA1802: Use Literals Where Appropriate](ca1802.md) | A field is declared static and read-only (Shared and ReadOnly in Visual Basic), and is initialized with a value that is computable at compile time. Because the value that is assigned to the targeted field is computable at compile time, change the declaration to a const (Const in Visual Basic) field so that the value is computed at compile time instead of at run time. |
| [CA1805: Do not initialize unnecessarily](ca1805.md) | The .NET runtime initializes all fields of reference types to their default values before running the constructor. In most cases, explicitly initializing a field to its default value is redundant, which adds to maintenance costs and may degrade performance (such as with increased assembly size). |
| [CA1806: Do not ignore method results](ca1806.md) | A new object is created but never used, or a method that creates and returns a new string is called and the new string is never used, or a Component Object Model (COM) or P/Invoke method returns an HRESULT or error code that is never used. |
| [CA1810: Initialize reference type static fields inline](ca1810.md) | When a type declares an explicit static constructor, the just-in-time (JIT) compiler adds a check to each static method and instance constructor of the type to make sure that the static constructor was previously called. Static constructor checks can decrease performance. |
| [CA1812: Avoid uninstantiated internal classes](ca1812.md) | An instance of an assembly-level type is not created by code in the assembly. |
| [CA1813: Avoid unsealed attributes](ca1813.md) | .NET provides methods for retrieving custom attributes. By default, these methods search the attribute inheritance hierarchy. Sealing the attribute eliminates the search through the inheritance hierarchy and can improve performance. |
| [CA1814: Prefer jagged arrays over multidimensional](ca1814.md) | A jagged array is an array whose elements are arrays. The arrays that make up the elements can be of different sizes, which can result in less wasted space for some sets of data. |
| [CA1815: Override equals and operator equals on value types](ca1815.md) | For value types, the inherited implementation of Equals uses the Reflection library and compares the contents of all fields. Reflection is computationally expensive, and comparing every field for equality might be unnecessary. If you expect users to compare or sort instances, or to use instances as hash table keys, your value type should implement Equals. |
| [CA1819: Properties should not return arrays](ca1819.md) | Arrays that are returned by properties are not write-protected, even if the property is read-only. To keep the array tamper-proof, the property must return a copy of the array. Typically, users will not understand the adverse performance implications of calling such a property. |
| [CA1820: Test for empty strings using string length](ca1820.md) | Comparing strings by using the String.Length property or the String.IsNullOrEmpty method is significantly faster than using Equals. |
| [CA1821: Remove empty finalizers](ca1821.md) | Whenever you can, avoid finalizers because of the additional performance overhead that is involved in tracking object lifetime. An empty finalizer incurs added overhead without any benefit. |
| [CA1822: Mark members as static](ca1822.md) | Members that do not access instance data or call instance methods can be marked as static (Shared in Visual Basic). After you mark the methods as static, the compiler will emit nonvirtual call sites to these members. This can give you a measurable performance gain for performance-sensitive code. |
| [CA1823: Avoid unused private fields](ca1823.md) | Private fields were detected that do not appear to be accessed in the assembly. |
| [CA1824: Mark assemblies with NeutralResourcesLanguageAttribute](ca1824.md) | The NeutralResourcesLanguage attribute informs the Resource Manager of the language that was used to display the resources of a neutral culture for an assembly. This improves lookup performance for the first resource that you load and can reduce your working set. |
| [CA1825: Avoid zero-length array allocations](ca1825.md) | Initializing a zero-length array leads to unnecessary memory allocation. Instead, use the statically allocated empty array instance by calling <xref:System.Array.Empty%2A?displayProperty=nameWithType>. The memory allocation is shared across all invocations of this method. |
| [CA1826: Use property instead of Linq Enumerable method](ca1826.md) | <xref:System.Linq.Enumerable> LINQ method was used on a type that supports an equivalent, more efficient property. |
| [CA1827: Do not use Count/LongCount when Any can be used](ca1827.md) | <xref:System.Linq.Enumerable.Count%2A> or <xref:System.Linq.Enumerable.LongCount%2A> method was used where <xref:System.Linq.Enumerable.Any%2A> method would be more efficient. |
| [CA1828: Do not use CountAsync/LongCountAsync when AnyAsync can be used](ca1828.md) | <xref:Microsoft.EntityFrameworkCore.EntityFrameworkQueryableExtensions.CountAsync%2A> or <xref:Microsoft.EntityFrameworkCore.EntityFrameworkQueryableExtensions.LongCountAsync%2A> method was used where <xref:Microsoft.EntityFrameworkCore.EntityFrameworkQueryableExtensions.AnyAsync%2A> method would be more efficient. |
| [CA1829: Use Length/Count property instead of Enumerable.Count method](ca1829.md) | <xref:System.Linq.Enumerable.Count%2A> LINQ method was used on a type that supports an equivalent, more efficient `Length` or `Count` property. |
| [CA1830: Prefer strongly-typed Append and Insert method overloads on StringBuilder](ca1830.md) | <xref:System.Text.StringBuilder.Append%2A> and <xref:System.Text.StringBuilder.Insert%2A> provide overloads for multiple types beyond System.String.  When possible, prefer the strongly-typed overloads over using ToString() and the string-based overload. |
| [CA1831: Use AsSpan instead of Range-based indexers for string when appropriate](ca1831.md) | When using a range-indexer on a string and implicitly assigning the value to a ReadOnlySpan&lt;char&gt; type, the method <xref:System.String.Substring%2A?#System_String_Substring_System_Int32_System_Int32_> will be used instead of <xref:System.Span%601.Slice%2A?#System_Span_1_Slice_System_Int32_System_Int32_>, which produces a copy of requested portion of the string. |
| [CA1832: Use AsSpan or AsMemory instead of Range-based indexers for getting ReadOnlySpan or ReadOnlyMemory portion of an array](ca1832.md) | When using a range-indexer on an array and implicitly assigning the value to a <xref:System.ReadOnlySpan%601> or <xref:System.ReadOnlyMemory%601> type, the method <xref:System.Runtime.CompilerServices.RuntimeHelpers.GetSubArray%2A> will be used instead of <xref:System.Span%601.Slice%2A?#System_Span_1_Slice_System_Int32_System_Int32_>, which produces a copy of requested portion of the array. |
| [CA1833: Use AsSpan or AsMemory instead of Range-based indexers for getting Span or Memory portion of an array](ca1833.md) | When using a range-indexer on an array and implicitly assigning the value to a <xref:System.Span%601> or <xref:System.Memory%601> type, the method <xref:System.Runtime.CompilerServices.RuntimeHelpers.GetSubArray%2A> will be used instead of <xref:System.Span%601.Slice%2A?#System_Span_1_Slice_System_Int32_System_Int32_>, which produces a copy of requested portion of the array. |
| [CA1834: Use StringBuilder.Append(char) for single character strings](ca1834.md) | <xref:System.Text.StringBuilder> has an `Append` overload that takes a `char` as its argument. Prefer calling the `char` overload to improve performance. |
| [CA1835: Prefer the 'Memory'-based overloads for 'ReadAsync' and 'WriteAsync'](ca1835.md) | 'Stream' has a 'ReadAsync' overload that takes a 'Memory&lt;Byte&gt;' as the first argument, and a 'WriteAsync' overload that takes a 'ReadOnlyMemory&lt;Byte&gt;' as the first argument. Prefer calling the memory based overloads, which are more efficient. |
| [CA1836: Prefer `IsEmpty` over `Count` when available](ca1836.md) | Prefer `IsEmpty` property that is more efficient than `Count`, `Length`, <xref:System.Linq.Enumerable.Count%60%601%28System.Collections.Generic.IEnumerable%7B%60%600%7D%29> or <xref:System.Linq.Enumerable.LongCount%60%601%28System.Collections.Generic.IEnumerable%7B%60%600%7D%29> to determine whether the object contains or not any items. |
| [CA1837: Use `Environment.ProcessId` instead of `Process.GetCurrentProcess().Id`](ca1837.md) | `Environment.ProcessId` is simpler and faster than `Process.GetCurrentProcess().Id`. |
| [CA1838: Avoid `StringBuilder` parameters for P/Invokes](ca1838.md) | Marshalling of `StringBuilder` always creates a native buffer copy, resulting in multiple allocations for one marshalling operation. |
| [CA1839: Use Environment.ProcessPath instead of Process.GetCurrentProcess().MainModule.FileName](ca1839.md) | `Environment.ProcessPath` is simpler and faster than `Process.GetCurrentProcess().MainModule.FileName`. |
| [CA1840: Use Environment.CurrentManagedThreadId instead of Thread.CurrentThread.ManagedThreadId](ca1840.md) | `Environment.CurrentManagedThreadId` is more compact and efficient than `Thread.CurrentThread.ManagedThreadId`. |
| [CA1841: Prefer Dictionary Contains methods](ca1841.md) | Calling `Contains` on the `Keys` or `Values` collection may often be more expensive than calling `ContainsKey` or `ContainsValue` on the dictionary itself. |
| [CA1842: Do not use 'WhenAll' with a single task](ca1842.md) | Using `WhenAll` with a single task may result in performance loss. Await or return the task instead. |
| [CA1843: Do not use 'WaitAll' with a single task](ca1843.md) | Using `WaitAll` with a single task may result in performance loss. Await or return the task instead. |
| [CA1844: Provide memory-based overrides of async methods when subclassing 'Stream'](ca1844.md) | To improve performance, override the memory-based async methods when subclassing 'Stream'. Then implement the array-based methods in terms of the memory-based methods. |
| [CA1845: Use span-based 'string.Concat'](ca1845.md) | It is more efficient to use `AsSpan` and `string.Concat`, instead of `Substring` and a concatenation operator. |
| [CA1846: Prefer `AsSpan` over `Substring`](ca1846.md) | `AsSpan` is more efficient than `Substring`. `Substring` performs an O(n) string copy, while `AsSpan` does not and has a constant cost. `AsSpan` also does not perform any heap allocations. |
| [CA1847: Use char literal for a single character lookup](ca1847.md) | Use `string.Contains(char)` instead of `string.Contains(string)` when searching for a single character. |
| [CA1848: Use the LoggerMessage delegates](ca1848.md) | For improved performance, use the `LoggerMessage` delegates. |
| [CA1849: Call async methods when in an async method](ca1849.md) | In a method which is already asynchronous, calls to other methods should be to their async versions, where they exist. |
| [CA1850: Prefer static `HashData` method over `ComputeHash`](ca1850.md) | It's more efficient to use the static `HashData` method over creating and managing a `HashAlgorithm` instance to call `ComputeHash`. |
| [CA1851: Possible multiple enumerations of `IEnumerable` collection](ca1851.md) | Possible multiple enumerations of `IEnumerable` collection. Consider using an implementation that avoids multiple enumerations. |
| [CA1852: Seal internal types](ca1852.md) | A type that's not accessible outside its assembly and has no subtypes within its containing assembly is not sealed. |
| [CA1853: Unnecessary call to 'Dictionary.ContainsKey(key)'](ca1853.md) | There's no need to guard `Dictionary.Remove(key)` with `Dictionary.ContainsKey(key)`. <xref:System.Collections.Generic.Dictionary%602.Remove(%600)?displayProperty=nameWithType> already checks whether the key exists and doesn't throw if it doesn't exist. |
| [CA1854: Prefer the 'IDictionary.TryGetValue(TKey, out TValue)' method](ca1854.md) | Prefer 'TryGetValue' over a Dictionary indexer access guarded by a 'ContainsKey' check. 'ContainsKey' and the indexer both look up the key, so using 'TryGetValue' avoids the extra lookup. |
| [CA1855: Use Span\<T>.Clear() instead of Span\<T>.Fill()](ca1855.md) | It's more efficient to call <xref:System.Span%601.Clear?displayProperty=nameWithType> than to call <xref:System.Span%601.Fill(%600)?displayProperty=nameWithType> to fill the elements of the span with a default value. |
| [CA1858: Use StartsWith instead of IndexOf](ca1858.md) | It's more efficient to call <xref:System.String.StartsWith%2A?displayProperty=nameWithType> than to call <xref:System.String.IndexOf%2A?displayProperty=nameWithType> to check whether a string starts with a given prefix. |
| [CA1859: Use concrete types when possible for improved performance](ca1859.md) | Code uses interface types or abstract types, leading to unnecessary interface calls or virtual calls. |
| [CA1860: Avoid using 'Enumerable.Any()' extension method](ca1860.md) | It's more efficient and clearer to use `Length`, `Count`, or `IsEmpty` (if possible) than to call <xref:System.Linq.Enumerable.Any%2A?displayProperty=nameWithType> to determine whether a collection type has any elements. |
| [CA1861: Avoid constant arrays as arguments](ca1861.md) | Constant arrays passed as arguments are not reused which implies a performance overhead. Consider extracting them to 'static readonly' fields to improve performance. |
| [CA1864: Prefer the 'IDictionary.TryAdd(TKey, TValue)' method](ca1864.md) | Both <xref:System.Collections.Generic.Dictionary%602.ContainsKey(%600)?displayProperty=nameWithType> and <xref:System.Collections.Generic.Dictionary%602.Add%2A?displayProperty=nameWithType> perform a lookup, which is redundant. It's is more efficient to call <xref:System.Collections.Generic.Dictionary%602.TryAdd%2A?displayProperty=nameWithType>, which returns a `bool` indicating if the value was added or not. `TryAdd` doesn't overwrite the key's value if the key is already present. |
| [CA1865-CA1867: Use char overload](ca1865-ca1867.md) | The char overload is a better performing overload for a string with a single char. |
| [CA1868: Unnecessary call to 'Contains' for sets](ca1868.md) | Both <xref:System.Collections.Generic.ISet%601.Add(%600)?displayProperty=nameWithType> and <xref:System.Collections.Generic.ICollection%601.Remove(%600)?displayProperty=nameWithType> perform a lookup, which makes it redundant to call <xref:System.Collections.Generic.ICollection%601.Contains(%600)?displayProperty=nameWithType> beforehand. It's more efficient to call <xref:System.Collections.Generic.ISet%601.Add(%600)> or <xref:System.Collections.Generic.ICollection%601.Remove(%600)> directly, which returns a Boolean value indicating whether the item was added or removed. |
| [CA1869: Cache and reuse 'JsonSerializerOptions' instances](ca1869.md) | Using a local instance of <xref:System.Text.Json.JsonSerializerOptions> for serialization or deserialization can substantially degrade the performance of your application if your code executes multiple times, since System.Text.Json internally caches serialization-related metadata into the provided instance. |
| [CA1870: Use a cached 'SearchValues' instance](ca1870.md) | Using a cached  <xref:System.Buffers.SearchValues%601> instance is more efficient than passing values to 'IndexOfAny' or 'ContainsAny' directly. |
```    


https://raw.githubusercontent.com/aspnet/AspNetCore/master/.editorconfig

https://apache.googlesource.com/lucenenet/+/refs/heads/benchmarkdotnet/.editorconfig

https://developers.mews.com/c-code-style-by-editorconfig-in-net-5-sdk-and-beyond/

https://milan.milanovic.org/post/enabling-high-code-quality-in-net/

https://www.mytechramblings.com/posts/configure-roslyn-analyzers-using-editorconfig/

