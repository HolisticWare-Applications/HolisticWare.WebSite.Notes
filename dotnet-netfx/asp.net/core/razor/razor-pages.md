# Razor pages

razor-pages.md

Razor pages rezide in 

```
Pages\
```

```
@page

<h1>Hello, world!</h1>
<h2>The time on the server is @DateTime.Now</h2>
```

*   similar to Razor view file

*   difference is the `@page` directive

    *   `@page` makes the file into an MVC action
    
    *   handles requests directly
    
    *   bypasses controller

    *   `@page` must be the first Razor directive on a page
    
        *   `@page` affects the behavior of other Razor constructs

    *   2 files = Razor (CSHTML) `<Filename>.cshtml` +  Code behind () `<Filename>.cshtml.cs`

```
@page                           @* Razor View -> Razor Page (MVC Action) NO controller *@

@using RazorPagesIntro.Pages
@model IndexModel2              @* Modell From Code Begind  <Filename>.cshtml.cs*@

<h2>Separate page model</h2>
<p>
    @Model.Message
</p>
```

```csharp

using Microsoft.AspNetCore.Mvc.RazorPages;
using System;

namespace RazorPagesIntro.Pages
{
    public class IndexModel2 : PageModel
    {
        public string Message { get; private set; } = "PageModel in C#";

        public void OnGet()
        {
            Message += $" Server time is { DateTime.Now }";
        }
    }
}```


NOTE: this is important when porting/migrating MVC apps with controllers.

*   It is not enough just to add `@page` directive and add PageModel inherited code
    behind

*   move Page converted from View from Views folder to Pages folder
