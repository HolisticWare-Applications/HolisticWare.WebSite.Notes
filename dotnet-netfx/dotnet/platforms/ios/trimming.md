# Trimming

trimming.md

Theory about `Microsoft.iOS.dll` being trimmed away should be easy enough to test:

```csharp
GC.KeepAlive (typeof (Foundation.NSObject)); 
```

in the CallMain function, and if that solves the problem you've confirmed the theory

