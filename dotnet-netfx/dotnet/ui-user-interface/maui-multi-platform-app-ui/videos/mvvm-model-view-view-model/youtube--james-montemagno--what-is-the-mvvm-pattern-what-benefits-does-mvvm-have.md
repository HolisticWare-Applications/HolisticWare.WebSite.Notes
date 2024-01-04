# What is the MVVM pattern, What benefits does MVVM have?

youtube--james-montemagno--what-is-the-mvvm-pattern-what-benefits-does-mvvm-have.md

# What is the MVVM pattern, What benefits does MVVM have?

youtube--james-montemagno--what-is-the-mvvm-pattern-what-benefits-does-mvvm-have.md

https://www.youtube.com/watch?v=Pso1MeX_HvI

What is the MVVM pattern, What benefits does MVVM have?

*   https://www.youtube.com/watch?v=AXpTeiWtbC8

*   https://learn.microsoft.com/en-gb/xamarin/xamarin-forms/enterprise-application-patterns/mvvm

*   https://learn.microsoft.com/en-gb/dotnet/maui/xaml/fundamentals/mvvm



*   architectural pattern

    *   MVVM

        Model View ViewModel

    *   MVC

        Model View Controller

    *   MVU

        Model View Update

*   code structure + frameworks

*   historically came in the land of XAML

    *   MAUI, Xamarin.Forms

    *   WPF, WinUI

    *   Uno, Avalonia
    
*   events

    *   classical

    *   in XAML

*   CommunityToolkit.MVVM nuget

    *   ViewModels inheerit from ObservableObject

    *   UI controls map to `ObservableProperties` in ViewModel

        *   `ObservableProperty` notifies other Fields/Properties with `[NotifyProperyChangedFor(nameof(UI.Control))]`

        *   bindings in XAML

            XAML property `Text="{Binding ToGeneratedObservableProperty}"`

            ```xaml
            <Entry
                Placeholder="Data..."
                Text="{Binding DataProperty}"
                />
            ```

            ```xaml
            xmlns:viewmodel="clr-namespace:AppMAUI"
            x:DataType="viewmodel:ViewModelForBusinessDomainModelObject"
            ```

    *   `[RelayCommand]` marks methods 

        *   adds `Command` suffix for use in XAML

    *   `BindingContext` is `ViewModel` (derived from `ViewModel`)

        *   constructor

            *   of the Page derived from `ContentPage`

            *   of the Con