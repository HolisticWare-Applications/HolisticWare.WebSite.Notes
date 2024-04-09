# Concepts

readme.md

*   https://www.youtube.com/playlist?list=PLdo4fOcmZ0oXNZX1Q8rB-5xgTSKR8qA5k

*   Forms

    ./forms.md

*   Components


Client and server rendering concepts
    
    https://learn.microsoft.com/en-us/aspnet/core/blazor/fundamentals/#client-and-server-rendering-concepts

Static and interactive rendering concepts

    https://learn.microsoft.com/en-us/aspnet/core/blazor/fundamentals/#static-and-interactive-rendering-concepts

Render modes

    
Detailed guidance on render modes is provided by the ASP.NET Core Blazor render modes article.


For a Blazor Web App in the Additional information dialog:

Interactive render mode dropdown list

Interactive server-side rendering (interactive SSR) is enabled by default with the Server option.
To only enable interactivity with client-side rendering (CSR), select the WebAssembly option.
To enable both interactive rendering modes and the ability to automatically switch between them at runtime, select the Auto (Server and WebAssembly) (automatic) render mode option.
If interactivity is set to None, the generated app has no interactivity. The app is only configured for static server-side rendering.
The Interactive Auto render mode initially uses interactive SSR while the .NET app bundle and runtime are download to the browser. After the .NET WebAssembly runtime is activated, the render mode switches to Interactive WebAssembly rendering.

By default, the Blazor Web App template enables both static and interactive SSR using a single project. If you also enable CSR, the project includes an additional client project (.Client) for your WebAssembly-based components. The built output from the client project is downloaded to the browser and executed on the client. Any components using the WebAssembly or automatic render modes must be built from the client project.

For more information, see ASP.NET Core Blazor render modes.

Interactivity location dropdown list

Per page/component: The default sets up interactivity per page or per component.
Global: Selecting this option sets up interactivity globally for the entire app.
Interactivity location can only be set if Interactive render mode isn't None and authentication isn't enabled.

To include sample pages and a layout based on Bootstrap styling, select the Include sample pages checkbox. Disable this option for project without sample pages and Bootstrap styling.

For more information, see ASP.NET Core Blazor render modes.