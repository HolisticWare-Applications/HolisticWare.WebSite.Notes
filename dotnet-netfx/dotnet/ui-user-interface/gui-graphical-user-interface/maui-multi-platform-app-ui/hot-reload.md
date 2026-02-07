# Hot Reload

hot-reload.md

*   https://dev.to/davidortinau/c-ui-and-net-hot-reload-a-match-made-in-net-maui-243f

```csharp
#if DEBUG
[assembly: System.Reflection.Metadata.MetadataUpdateHandlerAttribute(typeof(YourAppNamespace.HotReloadService))]
namespace YourAppNamespace { 
    public static class HotReloadService
    {
    #pragma warning disable CS8632 // The annotation for nullable reference types should only be used in code within a '#nullable' annotations context.
        public static event Action<Type[]?>? UpdateApplicationEvent;
    #pragma warning restore CS8632 // The annotation for nullable reference types should only be used in code within a '#nullable' annotations context.

        internal static void ClearCache(Type[]? types) { }
        internal static void UpdateApplication(Type[]? types) {
            UpdateApplicationEvent?.Invoke(types);
        }
    }
}
#endif
```

```csharp
protected override void OnNavigatedTo(NavigatedToEventArgs args)
    {
        base.OnNavigatedTo(args);

        Build();

#if DEBUG
        HotReloadService.UpdateApplicationEvent += ReloadUI;
#endif
    }

    protected override void OnNavigatedFrom(NavigatedFromEventArgs args)
    {
        base.OnNavigatedFrom(args);

#if DEBUG
        HotReloadService.UpdateApplicationEvent -= ReloadUI;
#endif
    }

    private void ReloadUI(Type[] obj)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            Build();
        });
    }
```

*   https://www.youtube.com/watch?v=py7pf1MIzmE

*   https://www.meziantou.net/supporting-hot-reload-in-your-dotnet-application.htm

*   https://devblogs.microsoft.com/dotnet/introducing-net-hot-reload/?WT.mc_id=DT-MVP-5003978

*   Finalize v1 pattern used by MetadataUpdateHandlers #51545

    *   https://github.com/dotnet/runtime/issues/51545

https://learn.microsoft.com/en-us/visualstudio/debugger/hot-reload

https://learn.microsoft.com/en-us/visualstudio/debugger/hot-reload-metadataupdatehandler?view=vs-2022

https://learn.microsoft.com/en-us/visualstudio/debugger/how-to-enable-and-disable-edit-and-continue?view=vs-2022


## VSCode + HotReload

1.  dotnet watch

2.  attach debugger


## Native

*   https://github.com/ivmirx/HotDemo

*   tbc

    *   https://github.com/rdavisau/tbc

*   LiveSharp

    *   https://www.livesharp.net/

*   Reloadify3000

    *   https://github.com/Clancey/Reloadify3000

    *   Continuous

        *   https://github.com/praeclarum/Continuous