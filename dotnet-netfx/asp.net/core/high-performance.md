# High Performance



|---------------|-------------------------------|
| Storage       | Number of cycles [cycles]     |
|---------------|-------------------------------|
| L1            |           3                   |
| L2            |           14                  |
| RAM           |           250                 |
| Disk          |           41 000 000          |
| Network       |           240 000 000         |



```
[ResponseCache(Duration = 20, VaryByQueryKeys =  new string{ "refresh", "new"})]
public async Task<ActionResult<List<ActionDto>>> ()
{
    return await ....;
}
```



## .net 

`String.Intern(string);`

```
```

https://docs.microsoft.com/en-us/dotnet/api/system.string.intern?view=netframework-4.7.2


```
string -> Spant<T>

strng.Substring(a,b) -> span.Slice() 
```


```
            Span<T>, 
            ReadOnlySpan<T>, 
            Memory<T> 
            ReadOnlyMemory<T>
```



## Entity Framework

https://en.wikipedia.org/wiki/Mobile_database

https://docs.microsoft.com/en-us/ef/core/providers/

