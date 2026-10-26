# Web Servers

Actively Developed Servers

*   ASP.NET Core

    *   https://dotnet.microsoft.com/en-us/apps/aspnet


*   GenHTTP

    *   https://genhttp.org/

    *   https://github.com/Kaliumhexacyanoferrat/GenHTTP

    ```csharp
    using GenHTTP.Engine.Internal;
    using GenHTTP.Modules.ApiBrowsing;
    using GenHTTP.Modules.Functional;
    using GenHTTP.Modules.Layouting;
    using GenHTTP.Modules.OpenApi;
    using GenHTTP.Modules.Practices;

    var api = Layout
                    .Create()
                    .Add(Inline.Create().Get(() => "Hello World"))
                    .AddOpenApi()
                    .AddScalar();

    var host = await Host
                        .Create()
                        .Handler(api)
                        .Defaults()
                        .StartAsync();

    ```

*   Sisk

    *   https://www.sisk-framework.org/

    *   https://github.com/sisk-http

*   SimpleW

    *   https://simplew.net/
    
    *   https://github.com/stratdev3/SimpleW

    ```csharp
    using System.Net;
    using SimpleW;

    var server = new SimpleWServer(IPAddress.Any, 8080);

    server.MapGet("/api/hello", () => new { message = "Hello world!" });

    await server.RunAsync();
    ```

*   Unhinged

    *   https://github.com/MDA2AV/unhinged

*   Watson

    *   https://github.com/dotnet/WatsonWebserver

*   Wired.IO

    *   https://mda2av.github.io/Wired.IO.Docs/
    



https://github.com/CarterCommunity/Carter
https://thecodeman.net/posts/building-api-with-carter-library-in-dotnet
https://medium.com/asp-dotnet/carter-in-net-a-better-alternative-to-minimal-apis-736abd703713


FastEndpoints

    https://fast-endpoints.com/
    https://github.com/FastEndpoints/Library

https://github.com/ServiceStack/ServiceStack
https://site.servicestack.com/

https://http-arena.com/#sort=rps:-1&tuned=0

https://http-arena.com/frameworks/lang/csharp/
https://http-arena.com/compare/csharp/
https://http-arena.com/frameworks/lang/csharp/

*   https://dev.to/kaliumhexacyanoferrat/beyond-aspnet-lightweight-alternatives-for-c-web-development-2ohi#aspnetcore