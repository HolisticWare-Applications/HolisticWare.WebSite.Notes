# Blazor Render Modes

rednder-modes.md


Interactive server-side rendering (interactive SSR) is enabled by default with the Server option.
To only enable interactivity with client-side rendering (CSR), use the WebAssembly option.
To enable both interactive rendering modes and the ability to automatically switch between them at runtime, use the Auto (Server and WebAssembly) (automatic) render mode option.
If interactivity is set to None, the generated app has no interactivity. The app is only configured for static server-side rendering.


dotnet new \
    blazor \
    --interactivity none \
    --output AppBlazor.Interactivity.None

dotnet new \
    blazor \
    --interactivity server \
    --output AppBlazor.Interactivity.Server

dotnet new \
    blazor \
    --interactivity webassembly \
    --output AppBlazor.Interactivity.WebAssembly

dotnet new \
    blazor \
    --interactivity auto \
    --output AppBlazor.Interactivity.Auto

.NET 8 Blazor: Render Modes + Demo App Download

    https://www.youtube.com/watch?v=u4azTLLGt8U

    https://github.com/CoderFoundry/BlazorRenderModes

.NET 8 Blazor All Render Modes (SSR, Server, WebAssembly, Auto) Explained for Beginners

    https://www.youtube.com/watch?v=C_bYPn-OTtw