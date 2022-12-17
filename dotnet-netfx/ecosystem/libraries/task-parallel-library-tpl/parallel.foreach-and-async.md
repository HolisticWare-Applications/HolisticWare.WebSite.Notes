# Parallel.ForEach + async

parallel.foreach-and-async.md

https://stackoverflow.com/questions/15136542/parallel-foreach-with-asynchronous-lambda

f you call Task.Run without awaiting the result, then that's just throwing fire-and-forget work onto the thread pool. That is almost always a mistake. 



use the ParallelForEachAsync extension method from AsyncEnumerator NuGet Package:

```csharp

using Dasync.Collections;

var bag = new ConcurrentBag<object>();
await myCollection.ParallelForEachAsync(async item =>
{
  // some pre stuff
  var response = await GetData(item);
  bag.Add(response);
  // some post stuff
}, maxDegreeOfParallelism: 10);
var count = bag.Count;
```


https://www.nuget.org/packages/AsyncEnumerator

https://stackoverflow.com/questions/11564506/nesting-await-in-parallel-foreach


One of the new .NET 6 APIs is Parallel.ForEachAsync, a way to schedule asynchronous work that 
allows you to control the degree of parallelism:

```csharp
var urls = new [] 
{
    "https://dotnet.microsoft.com",
    "https://www.microsoft.com",
    "https://stackoverflow.com"
};

var client = new HttpClient();

var options = new ParallelOptions { MaxDegreeOfParallelism = 2 };
await Parallel.ForEachAsync(urls, options, async (url, token) =>
{
    var targetPath = Path.Combine(Path.GetTempPath(), "http_cache", url);

    var response = await client.GetAsync(url);

    if (response.IsSuccessStatusCode)
    {
        using var target = File.OpenWrite(targetPath);

        await response.Content.CopyToAsync(target);
    }
});
```

*   https://www.hanselman.com/blog/parallelforeachasync-in-net-6

    *   https://github.com/dotnet/runtime/blob/v6.0.5/src/libraries/System.Threading.Tasks.Parallel/src/System/Threading/Tasks/Parallel.ForEachAsync.cs

    *   https://learn.microsoft.com/en-us/dotnet/standard/parallel-programming/how-to-handle-exceptions-in-parallel-loops

*   https://stackoverflow.com/questions/40149119/how-to-handle-exceptions-in-parallel-foreach

*   https://vantsuyoshi.wordpress.com/2012/01/05/when-to-use-tpl-async-reactive-extension-tpl-dataflow/

