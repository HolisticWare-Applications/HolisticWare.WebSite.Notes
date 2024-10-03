# RenderModes

render-modes.md

*   render modes

    *   Static SSR

    *   WASM - Standalone

    *   Server SignalR InteractiveServer

    *   InteractiveWebAssembly


The main differences between Blazor WebAssembly (WASM) and Blazor Server are:

Hosting Model:

Blazor WASM: Runs entirely in the browser on the client-side using WebAssembly. No continuous connection to the server is required after the initial load.

Blazor Server: Executes the UI on the server and uses a SignalR connection to sync UI updates with the client in real-time.

2. Performance:

Blazor WASM: The app is downloaded and runs in the browser, which may lead to slower initial load times but faster UI responsiveness once loaded.

Blazor Server: UI rendering and processing are done on the server, reducing the client-side load but depending on latency and connection quality.

3. Resource Use:

Blazor WASM: Uses client resources, which could be limited, but doesn't continuously use server resources.

Blazor Server: Requires a constant SignalR connection and uses server resources for UI updates and state management.

4. Offline Support:

Blazor WASM: Can function offline since the app runs in the browser.

Blazor Server: Requires an active connection; if the connection drops, the app will not function.

5. Security:

Blazor WASM: All client-side code is exposed in the browser, so sensitive logic should not be handled on the client.

Blazor Server: Server-side logic is more secure, but SignalR communication needs to be secured.

6. App Size:

Blazor WASM: Larger app size due to client-side dependencies like .NET runtime.

Blazor Server: Smaller initial download, as most logic and components are server-side.


They are mostly the same. The only difference is that in server mode you cannot access the DOM and JS until component is rendered. So if you do it in both modes in OnAfterRender you will not have any problem.


## Videos

*   Blazor Component Render Modes [Pt 8] | Front-end Web Development with .NET for Beginners

    *   https://www.youtube.com/watch?v=HZAdXx7-PnM

*   .NET 8 Blazor All Render Modes (SSR, Server, WebAssembly, Auto) Explained for Beginners

    *   https://www.youtube.com/watch?v=C_bYPn-OTtw&t=339s

*   .NET 8 Blazor: Render Modes + Demo App Download

    *   https://www.youtube.com/watch?v=u4azTLLGt8U

*   Blazor Render Modes - Understand Component Feature Compatibility

    *   https://www.youtube.com/watch?v=Ob7zT70laDw

*   How to Choose a Blazor Render Mode

    *   https://www.youtube.com/watch?v=Da_qaw3bRO8

*   Microsoft FINALLY Improved Global Interactive Render Modes in Blazor with .NET 9

    *   https://www.youtube.com/watch?v=nCq12hBYHzc

*   How SEO Works With Each Blazor Render Mode in .NET 8

    *   https://www.youtube.com/watch?v=FS3ZN0NYrVk


## Diverse

*   https://www.reddit.com/r/Blazor/comments/1fkgyjq/difference_between_blazor_web_assembly_and_blazor/