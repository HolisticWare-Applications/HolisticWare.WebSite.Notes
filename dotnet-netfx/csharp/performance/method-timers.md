# Method timers

method-timers.md


```
Debug
Release
ReleaseProfiled = Release + Profiling
```

*   IL weaver to instrument code

    *   https://opentelemetry.io/docs/instrumentation/net/getting-started/

    *   https://github.com/ndrwrbgs/Tracer.OpenTelemetry.Fody

```
var watch = System.Diagnostics.Stopwatch.StartNew();
// the code that you want to measure comes here
watch.Stop();
var elapsedMs = watch.ElapsedMilliseconds;
```

*   https://github.com/Fody/MethodTimer

*   https://stackoverflow.com/questions/73786687/adding-stopwatch-to-all-functions-of-c-sharp-project#:~:text=Don't.,indication%20of%20the%20time%20spent.


```csharp
public class Superwatch : IDisposable
{
    static Stopwatch Watch = new Stopwatch();
    static Superwatch()
    {
        Watch.Start();
    }

    TimeSpan Start;
    public Superwatch()
    {
        Start = Watch.Elapsed;
    }

    public void Dispose()
    {
        TimeSpan elapsed = Watch.Elapsed - Start;
        Console.WriteLine($"Time elapsed: {elapsed}");
    }
} 

// Then just pack the method into a using of an instance of the class you created.

using (var watch = new Superwatch())
{
      //piece of code
}
```

*   https://github.com/metalama/Metalama

*   https://github.com/metalama/Metalama.Samples/tree/release/2025.0/examples/metrics

