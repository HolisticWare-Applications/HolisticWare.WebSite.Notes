# Dictionary Initializers

initializers.md

```csharp
Dictionary<string, string> data = new ())
									{
										{ "test", "val" }, 
										{ "test2", "val2" }
									};
```
In C# 6, you now have the option of using a more intuitive syntax with 
Dictionary as well as any other type that supports indexers. 
The above statement can be rewritten as:

```csharp
Dictionary<string, string> data = new ())
									{
										["test"] = "val",
										["test2"] = "val2"
									};
```