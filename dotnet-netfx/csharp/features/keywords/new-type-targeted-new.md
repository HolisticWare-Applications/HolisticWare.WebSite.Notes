# Type targeted new `new()`

new-type-targeted-new.md

*   https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/operators/new-operator

https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/new

*   https://www.reddit.com/r/csharp/comments/wfxo4i/var_o_new_object_vs_object_o_new/

*   https://stackoverflow.com/questions/4236854/what-does-new-mean

*   https://stackoverflow.com/questions/38099520/i-dont-understand-why-we-need-the-new-keyword

*   https://stackoverflow.com/questions/69432762/what-is-new-without-type-in-c


```csharp
var s = new string("hello");

can be replaced with:

string s = new("hello");

throw new System.Exception("hi");

you can use this abbreviated form instead:

throw new ("hi");
```


