# `partial` Keyword

partial.md

```csharp
// Declaring declaration
public partial class
                                        PartialExamples
{
    /// <summary>
    /// Gets or sets the number of elements that the List can contain.
    /// </summary>
    public partial
        int
                                        Capacity
    {
        get;
        set; 
    }

    /// <summary>
    /// Gets or sets the element at the specified index.
    /// </summary>
    /// <param name="index">The index</param>
    /// <returns>The string stored at that index</returns>
    public partial
        string
                                        this[int index]
    {
        get;
        set;
    }

    public partial 
        string?
                                        TryGetAt
                                        (
                                            int index
                                        );
}
```

```csharp
public partial class
                                        PartialExamples
{
    private 
        List<string> 
                                        _items = new ()
                                                [
                                                    "one",
                                                    "two",
                                                    "three",
                                                    "four",
                                                    "five",
                                                ];

    // Implementing declaration
    public partial
        int
                                        Capacity
    {
        get => _items.Count;
        set
        {
            if ((value != _items.Count) && (value >= 0))
            {
                _items.Capacity = value;
            }
        }
    }

    public partial string this[int index]
    {
        get => _items[index];
        set => _items[index] = value;
    }

    /// <summary>
    /// Gets the element at the specified index.
    /// </summary>
    /// <param name="index">The index</param>
    /// <returns>The string stored at that index, or null if out of bounds</returns>
    public partial string? TryGetAt(int index)
    {
        if (index < _items.Count)
        {
            return _items[index];
        }
        return null;
    }
}```