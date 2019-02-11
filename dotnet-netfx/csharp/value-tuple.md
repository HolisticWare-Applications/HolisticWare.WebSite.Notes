# `ValueTuple`

value-tuple.md 

```
```

*   `ValueTuple` is Value Type 

    * pros:

        *   less space/memory

        *   better data locality 

        *   no GC

        *   deterministic deallocation for stack allocated Value Types

        *   `System.ValueType.dll`

    *   cons:

        *   expensive to copy

        *   