# Async


*   https://docs.microsoft.com/en-us/dotnet/csharp/async

*   https://msdn.microsoft.com/en-us/library/vstudio/hh191443.aspx#BKMK_Threads

*   https://msdn.microsoft.com/en-us/library/hh191443.aspx#BKMK_WhatHappensUnderstandinganAsyncMethod

*   https://exceptionnotfound.net/using-async-and-await-in-asp-net-what-do-these-keywords-mean/

*   https://devblogs.microsoft.com/dotnet/how-async-await-really-works/

*   https://www.reddit.com/r/csharp/comments/10ukg6u/transitioning_to_async_development/

## Async methods with synchronous implementations

two common use cases:

*   implementation of an interface that allows asynchronous callers, but implementation is synchronous.

*   implementation for stubbing/mocking asynchronous code for testing

```csharp
public async Task<T> DoSomethingSync()
{
    // synchronous code
    DoSomethingElseSync();

    return Task.FromResult(default(T));
}
```

## Call async methods from sync methods

```csharp
public T DoSomethingSync()
{
    // returns T
    Task<T> task =  DoSomethingAsync();

    return task.Result;
}
```


```csharp
public T DoSomethingSync()
{
    Task<T> task = Task.Run<T>
    (
        async () => 
        {
            // returns T
            await DoSomethingAsync();
        }
    );

    return task.Result;
}
```


*   http://blog.stephencleary.com/2012/02/async-and-await.html

*   http://blog.stephencleary.com/2012/07/dont-block-on-async-code.html

