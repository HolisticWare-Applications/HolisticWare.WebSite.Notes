# MAUI App Hosting

app-hosting.md


*   https://egvijayanand.in/2025/09/29/integrated-app-hosting-builder-method-for-dotnet-maui-explained/

*   https://github.com/egvijayanand/dotnet-maui-samples


```csharp
public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        // Refer to the other code snippet for the enhanced method.
        // Option 1 - Using the Window type as it is
        //builder.UseMauiApp<App, Window>(_ => new Window(new MainPage()) { Title = "MyApp" })
 
        // Option 2 - Page resolved from DI container
        //builder.UseMauiApp<App, Window>(sp => new Window(sp.GetRequiredService<MainPage>()) { Title = "MyApp" });
 
        // Option 3 - Using Shell as the initial page
        //builder.UseMauiApp<App, Window>(_ => new Window(new AppShell()))
 
        // Option 4 - Extending the Window type
        // Note: There's no need to register the MainWindow in the DI container explicitly.
        builder.UseMauiApp<App, MainWindow>()
               .ConfigureFonts(fonts =>
               {
                   fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                   fonts.AddFont("OpenSans-SemiBold.ttf", "OpenSansSemiBold");
               })
               // Another extension method to configure services from this toolkit
               .ConfigureServices(services =>
               {
                   services.AddSingleton(SemanticScreenReader.Default);
                   services.AddSingleton<MainViewModel>();
                   services.AddSingleton<MainPage>();
               });
 
#if DEBUG
        builder.Logging.AddDebug();
#endif
 
        return builder.Build();
    }
}
```

