# `IEnumerable<T>` 

ineumerable-of-t.md

## Casting/Converting

n summary, Cast() works on the non-generic IEnumerable, which boxes each int as an Object. 
So, when the Cast is called it can only treat the elements as being of type Object, which cannot 
be cast to long.

```csharp
IEnumerable<int> data_i = new List<int>() { 1, 2, 3 };
IEnumerable<double> data_d = data_i.Cast<double>();
```

.cast<>() cannot be used on primitive types in general.


*   https://stackoverflow.com/questions/4433648/casting-ienumerableint-to-ienumerablelong-fails

*   https://stackoverflow.com/questions/445471/puzzling-enumerable-cast-invalidcastexception
