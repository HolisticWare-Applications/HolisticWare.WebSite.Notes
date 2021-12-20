# C# Extension methods

extension-methods.md

https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/extension-methods

https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/how-to-implement-and-call-a-custom-extension-method

https://en.wikibooks.org/wiki/C_Sharp_Programming/Extension_methods

c# 3.0

```
IEnumerable<int> Range(this int count) 
{
  for (int cc=0; cc < count; ++cc) 
  {
    yield return cc;
  }
}
```

usage

```
foreach (int count in 10.Range()) 
{
    
}
```