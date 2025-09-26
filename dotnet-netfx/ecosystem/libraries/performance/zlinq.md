# ZLinq

zlinq.md

*   https://github.com/Cysharp/ZLinq

*   https://neuecc.medium.com/zlinq-a-zero-allocation-linq-library-for-net-1bb0a3e5c749

*   https://news.ycombinator.com/item?id=44046578

## Videos

*   Make LINQ 10 Times Faster in .NET Today

    *   https://www.youtube.com/watch?v=pUBc9uutSZM

*   C# LINQ just got way faster with "ZLinq"

    *   https://www.youtube.com/watch?v=6vx8WyoYKJ4

*   ZLinq Revolutionizes Unity Game Development With ZERO ALLOCATIONS

    *   https://www.youtube.com/watch?v=gX5nD2LeAvQ


```csharp
   from x in xs
            where x.IsFoo
            let y = Frob(x)
            where y.IsBar
            let z = Frob(y)
            where z.IsBaz
            order by x, y descending, z
            select z;
```

rewritten with explicit method calls and lambdas, it becomes something like:

```csharp
   xs
        .Where(x => x.IsFoo)
        .Select(x => (x: x, y: Frob(x)) }
        .Where(xy => xy.y.IsBar)
        .Select(xy => (x: xy.x, y: xy.y, z: Frob(xy.y)))
        .Where(xyz => xyz.z.IsBaz)
        .OrderBy(xyz => xyz.x)
        .ThenByDescending(xyz => xyz.y)
        .ThenBy(xyz => xyz.z)
        .Select(xyz => xyz.z)
```


## MAUI

https://github.com/search?q=repo%3Adotnet%2Fmaui%20.Select&type=code

in MAUI

```
src/Essentials/src/TextToSpeech/TextToSpeech.android.cs
```

```
			return JavaLocale.GetAvailableLocales()
				.Where(IsLocaleAvailable)
				.Select(l => new Locale(l.Language, l.Country, l.DisplayName, string.Empty))
				.GroupBy(c => c.ToString())
				.Select(g => g.First());
```

*   https://learn.microsoft.com/en-us/dotnet/csharp/linq/how-to-query-strings

*   https://learn.microsoft.com/en-us/dotnet/csharp/linq/how-to-query-collections

*   https://learn.microsoft.com/en-us/dotnet/csharp/linq/how-to-query-files-and-directories

*   https://learn.microsoft.com/en-us/dotnet/csharp/linq/how-to-extend-linq

*   https://learn.microsoft.com/en-us/dotnet/csharp/linq/how-to-extend-linq




