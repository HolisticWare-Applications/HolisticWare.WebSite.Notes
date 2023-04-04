# Blazor United

blzor-united.md

*   Steve Sanderson Wows Web-Devs with Peek at 'Blazor United' for .NET 8

    *   https://visualstudiomagazine.com/articles/2023/01/26/blazor-united.aspx

*   Blazor United prototype

    *   currently 2023-01

        *   HTML

            *   simple, fast responses

            *   technologies

                *   MVC

                *   Razor Pages

        *   SPA

            *   rich interactivity

            *   technologies

                *   Blazor

                    *   Server

                    *   WebAssembly

    *   experiments/prototype

        *   unifying

            *   Razor Pages

            *   Blazor

                *   Server

                *   WebAssembly

        *   branch

            *   https://github.com/dotnet/aspnetcore/tree/blazor-united/src

        *   mobile to desktop

            *   https://visualstudiomagazine.com/articles/2019/09/26/blazor-future.aspx

            *   https://news.ycombinator.com/item?id=34516687

            *   https://www.reddit.com/r/programming/comments/10kp0it/blazor_united_when_it_ships_it_would_be_the_most/


```
@attribute[ComponentRenderMode(WebComponentrenderMode.Server)]
@attribute[ComponentRenderMode(WebComponentrenderMode.WebAssembly)]
@attribute[ComponentRenderMode(WebComponentrenderMode.Auto)]
```
