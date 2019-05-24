# C# Generics and Operators

generics-and-operators.md

*   https://stackoverflow.com/questions/756954/arithmetic-operator-overloading-for-a-generic-class-in-c-sharp

*   `HolisticWare.Core.Math.Intervals`

```
T Sum<T>(T a,T b)
{ return a+b; }
```

After all, addition is a concept that is largely type-independent, and this all makes sense when used as 
in:

```
Sum<int>(1,2);
```

Of course if you try this out you will discover that the compiler returns:

```
Operator "+" cannot be applied to
operands of type "T" and "T"
``

This is all very reasonable in (say) C++, where a template of this sort would work as expected, but C# 
generics are not C++ Templates. C# generics are implemented at runtime and are type checked at compile 
time. A little thought should reveal the error in the initial thinking about the example. Not all objects 
support the addition operation and, as T can be any class, at runtime the compiler simply cannot determine 
what a+b means when the type of a and b isn’t yet determined.


*   https://www.developerfusion.com/article/84413/making-generics-add-up/

*   https://mattwarren.org/data/2018/03/csharp.html







