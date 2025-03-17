

bindable-properties.md

*   https://learn.microsoft.com/en-us/dotnet/maui/fundamentals/bindable-properties

*   extending existing Controls

```csharp
public static readonly 
    BindableProperty 
                                        IsExpandedProperty =
                                        BindableProperty.Create 
                                        (
                                            "IsExpanded",
                                            typeof(bool),
                                            typeof(Expander),
                                            false
                                        );


public
    bool
                                        IsExpanded
{
    get => (bool)GetValue(IsExpandedProperty);
    set => SetValue(IsExpandedProperty, value);
}
```

```xml
<ContentPage 
    ...
    xmlns:local="clr-namespace:DataBindingDemos" 
    ...
    >

    ...

    <Expander IsExpanded="true">
        ...
    </Expander>

    ...

</ContentPage>
```

```csharp
Expander expander = new ()
{
    IsExpanded = true
};
```





```csharp
public static readonly 
    BindableProperty 
                                        IsExpandedProperty =
                                        BindableProperty.Create 
                                        (
                                            "IsExpanded",
                                            typeof(bool),
                                            typeof(Expander),
                                            false,
                                            propertyChanged: OnIsExpandedChanged
                                        );


public
    bool
                                        IsExpanded
{
    get => (bool)GetValue(IsExpandedProperty);
    set => SetValue(IsExpandedProperty, value);
}

static
    void
                                        OnIsExpandedChanged
                                        (
                                            BindableObject bindable,
                                            object oldValue,
                                            object newValue
                                        )
{
  // Property changed implementation goes here
}
```

```xml
<ContentPage 
    ...
    xmlns:local="clr-namespace:DataBindingDemos" 
    ...
    >

    ...

    <Expander IsExpanded="true">
        ...
    </Expander>

    ...

</ContentPage>
```

```csharp
Expander expander = new ()
{
    IsExpanded = true
};
```




