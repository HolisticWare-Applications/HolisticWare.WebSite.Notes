# Span and Memory


## Span

*   Conversions to `Span<T>`

    *   `T[]`

    *   `T*`

    *   `stackalloc`

    *   `IntPtr`

*   Conversions to `ReadOnlySpan<T>`

    *   `T[]`

    *   `T*`

    *   `stackalloc`

    *   `IntPtr`

    *   `string`

*   notes

    *   type safe access to memory

    *   maintaining performance of raw access

    *   benefit over `unsafe` code

    *   `unsafe` code is 

        *   expensive to implement and maintain

        *   fragile and risky

    *   `Span<T>` can function in the same scenarios as native memory

        *   no need to wory about buffer underruns and overruns or dangling pointers

        *   provides write or read-only access to contiguous memory

        *   even immutable types like `string`

        *   receiver of contiguous memory of data of 

    *   abstraction of a continuous sequence in the memory

    *   allows to peek into memory without knowing the detail and without any memory allocation

    *   Basically unmanaged pointers without using "unsafe" code

    *   enabling writing good lower-level code for performance-critical sections.

    *   uniform API for working with

        *   unmanaged memory buffers

        *   Arrays and subarrays

        *   strings and substrings

    *   fully type safe and memory safe

    *   value type

    *   minimal overhead

    https://www.slideshare.net/yuliafast/adam-sitnik-state-of-the-net-performance
    

## Internals

*   `Span<T>` JIT intrinsic - does not have direct C# representation (code)

*   approximation:

```csharp
readonly ref struct Span<T>
{
    readonly ref T  _pointer;
    readonly int    _length;

    public ref T this[int index] => { /*....*/ }
}
```

*   restrictions

    *   `ref` (type or parameter) extends the analogy - cannot be on the heap ??

    *   `ref` 
    
        *   interior pointers can refer to the locations withing objects, fields, array elements, evaulation stack

        *   expensive for GC to track

            *   not allowed on the heap

        *   C# restricts users in capturing such values in

            *   lambda expressions

            *   iterators

            *   async methods

    *   the same restrictions apply to `Span<T>` or any type containing `Span<T>`

    *   C# 7.2 added `ref struct`


## `Memory<T>`

*   to overcome heap restrictions!


## Samples

*   https://www.codeproject.com/Articles/5269747/Using-Span-T-to-Improve-Performance-of-Csharp-Code


## Diverse

*   Product info: 

    http://www.dot.net

*   Learn more: 

    http://docs.microsoft.com/en-us/dotnet/csharp/

*   Documentation: 

    http://aka.ms/csharp72

*   https://blogs.msdn.microsoft.com/dotnet/2018/04/18/performance-improvements-in-net-core-2-1/

They lay out a few optimizations they've done on the core libraries thanks to Span<T>, and they're all about very basic stuff like string comparison. All of this adds up to a lot of perf gains on .NET Core, and that's one of the reasons why it is so fast now.

All of these performance stuff isn't made for "basic" developers like you and me. They come from requests from the ASP.NET team what wants to build the fastest web platform possible, and everything that makes ASP.NET faster is a big win for everybody.


On reason for Span<T> being a stack-only type is the struct tearing issue explained here: 

https://github.com/dotnet/corefxlab/blob/master/docs/specs/span.md#struct-tearing

How do you overcome struct tearing issues with the Memory<T> type?


As you noted since Memory<T> is a struct and storable on the heap it is subject to tearing problems. The difference though is the tearing cannot create type safety issues. The structure of Memory<T> allows for the validation that bounds are still legal.

For example in the case of arrays it is possible to verify the index and length are legal identifiers. For Span<T> to have similar safety it would need to do this non-trivial validation on every index operation. That would severely impact performance.

This does mean though that tearing can be used to increase the amount of elements you can view in a Memory<T> instance. For example if I had a Memory<T> restricted to see one element of an array, it would be possible to use tearing as a method to see other elements in the array. But I would never be able to create a Span<T> that accessed elements before or after the array.


> Having something like IArray<T> and some Array<T> could allow developers having their own solution and don't have to rewrite code on and on again when new features like Span<T> comes up.

Take a look at OwnedMemory<T>. That is our generic solution for providing contiguous memory that can be used with Memory<T> and Span<T>. 

https://github.com/dotnet/corefxlab/blob/master/docs/specs/span.md


```
decimal someDecimal = 12.34M;

ReadOnlySpan<decimal> decimalSpan = MemoryMarshal.CreateReadOnlySpan(ref someDecimal, 1);
ReadOnlySpan<byte> byteSpan = MemoryMarshal.AsBytes(decimalSpan);
```
## Videos

*   Jared Parsons: C# 7.2: Understanding Span Connect(); 2017 
    
    https://channel9.msdn.com/Events/Connect/2017/T125

*   David Wengier: A (brief) overview of Span≤T≥

    https://www.youtube.com/watch?time_continue=1&v=byvoPD15CXs

*   Jeffrey Richter «Efficient Buffer Manipulation using C# 7.2's Span»

    https://www.youtube.com/watch?v=gWcyXGIbRDI

*   Adam Sitnik: State of the .NET Performance

    https://www.youtube.com/watch?v=CSPSvBeqJ9c


*   Writing high performance code in .NET - Bart De Smet

    https://www.youtube.com/watch?v=fI1XGVIQjkA








Lesser known features of C# 7

https://www.youtube.com/watch?v=CDLvAFljIPo
