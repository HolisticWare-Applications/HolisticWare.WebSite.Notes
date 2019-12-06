# C# Tips and Tricks

csharp-tips-and-tricks.md

## Exceptions

### Throwing Exceptions

```
    throw new ArgumentNullException(nameof(customer), "Customer cannot be null");
```

### Catching Exceptions

```csharp
    try 
    {
        DoSomething();
    } 
    catch (SomeDerivedException ex) 
    {
        // Some specific logic goes here
    }
```

### Rethrowing Exceptions

```csharp
    try 
    {
        DoSomething();

    } 
    catch (InvalidOperationException ex) 
    {
        if (ex.Message.Contains("")) 
        {
         // Some specialized handling logic
        } 
        else 
        {
            throw; // The ex is implicit
        }
    }
```

## Immutable types

```csharp
    date.Date = date.Date.AddDays(1);
```

## TimeSpan

```csharp
    TimeSpan result = myStopWatch.Elapsed;

    // misleading for if time elapsed > 1s
    Console.Debug($"    Miliseconds = " + result.Milliseconds + " ms");

    // OK
    Console.Debug($"    TotalMiliseconds = " + result.TotalMilliseconds + " ms");
```

## Comparisons

```csharp
    double d1 = x;
    double d1 = y;
    bool are_doubles_equal = Math.Abs(d1 - d2) < Double.Epsilon;
```

## Strings

### Concatenation

```
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < 1000; i++)
    {
        sb.Append(i);
    }

    return sb.ToString(); 
```

## Using statements for `IDisposable`

```
    using (SqlConnection connection = new SqlConnection(connection_string)) 
    {
        connection.Open();

        DoSomething(); // could throw

    }   // IDisposable will take care of `connection` object
```