# Application Lifecycle and Events

application-lifecycle-and-events.md

*   https://learn.microsoft.com/en-us/dotnet/maui/fundamentals/app-lifecycle

*   https://www.syncfusion.com/blogs/post/configuring-life-cycle-events-in-net-maui-apps

*   https://www.syncfusion.com/blogs/post/configuring-life-cycle-events-in-net-maui-apps


*    https://learn.microsoft.com/en-us/dotnet/maui/fundamentals/app-lifecycle#android


```csharp
using Microsoft.Maui.LifecycleEvents;

public static class 
                                    MauiProgram
{
   public static
    MauiApp
                                    CreateMauiApp
                                    (                                        
                                    )
   {
     var builder = MauiApp.CreateBuilder();
     builder.ConfigureLifecycleEvents
                (
                    AppLifecycle => 
                    {
                        //
                        // code to raise an event.
                        //
                        #if ANDROID
                            AppLifecycle.AddAndroid
                                            (
                                                android => 
                                                android.OnBackPressed((activity) => BackPressed())
                                            );
                        #endif
                        #if IOS
                        AppLifecycle.AddiOS
                                            (
                                                ios => 
                                                ios.WillEnterForeground((app) => EnteredForeground())
                                            );
                        #endif
                        #if WINDOWS
                        AppLifecycle.AddWindows
                                            (
                                                windows =>
                                                windows.OnNativeMessage
                                                            (
                                                                (app, args) => 
                                                                {
                                                                    app.ExtendsContentIntoTitleBar = false;
                                                                }
                                                            )
                                            );
                        #endif

                    }
                );
     return builder.Build();
   }
}
```
