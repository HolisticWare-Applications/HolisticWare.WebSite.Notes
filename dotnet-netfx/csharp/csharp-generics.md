# C# Generics

csharp-generics.md 

## Generic Methods

```csharp
public partial class SomeClass
{
    public T Method<T>() 
    { 
        return default(T);
    }
}
```

## Generic Properties Trick

```csharp
public partial class GenericProperty<T>
{
    private T t;

    public T Value
    {
        get
        {
            return t;
        }
        set
        {
            t = value;
        }
    }

    public static implicit operator T(GenericProperty<T> value)
    {
        return value.Value;
    }

    public static implicit operator GenericProperty<T>(T value)
    {
        return new GenericProperty<T> 
        { 
            Value = value 
        };
    }
}
```

Usage:

```csharp
public partial class SomeClass
{
    public GenericProperty<int> PropertyImplementation 
    { 
        get; 
        set; 
    }
}
```