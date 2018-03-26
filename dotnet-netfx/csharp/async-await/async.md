# Async

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

