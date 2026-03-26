




https://stackoverflow.com/questions/71038259/routable-componet-of-razor-class-library-not-displayed-in-asp-net-core-6-0-webas

```razor
@namespace Blazor.App.UI
@using System.Reflection

<Router AppAssembly="@typeof(Blazor.App.Core.ListOptions).Assembly" AdditionalAssemblies="@Assemblies">
    <Found Context="routeData">
        <RouteView RouteData="@routeData" DefaultLayout="@typeof(MainLayout)" />
        <FocusOnNavigate RouteData="@routeData" Selector="h1" />
    </Found>
    <NotFound>
        <PageTitle>Not found</PageTitle>
        <LayoutView Layout="@typeof(MainLayout)">
            <p role="alert">Sorry, there's nothing at this address.</p>
        </LayoutView>
    </NotFound>
</Router>

@code 
{
    private 
        List<Assembly> 
                                        Assemblies 
                                        => 
                                        new List<Assembly>() 
                                        { 
                                            typeof(Blazor.App.UI.Index).Assembly
                                        };
}
```

*   https://stackoverflow.com/questions/58152228/why-wont-blazor-route-to-component-in-razor-library

