# Pattern Matching

pattern-matching.md

*   https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/functional/pattern-matching

*   https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/tutorials/pattern-matching

```csharp
int a = 99;
if ( a >= 90 && a <=100 )
{

}
```

```csharp
int a = 99;
if ( a is >= 90 and <=100 )
{
    
}
```

```csharp
string test = "TeST_something_CooL";

if (working.IndexOf("_") is int idx && idx > 0)
{
}
```