Build performance

*   local build with added stopwatches

*   another

    ```
    dotnet-trace --format speedscope 
    ```

    for comparison

    *   little tricky to attach to dotnet build, but I got it to work before:

        *   https://github.com/dotnet/android/blob/main/Documentation/guides/tracing.md#how-to-dotnet-trace-a-build