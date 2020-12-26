# UI Frameworks

ui-frameworks.md 

*   Xamarin.Forms

*   XWT

    https://github.com/mono/xwt

*   Eto.Forms

    https://github.com/picoe/Eto

*   Avalonia

    https://github.com/AvaloniaUI/Avalonia

*   NOESIS gui

    *   https://www.noesisengine.com/

*   OOUI

    *   https://github.com/praeclarum/Ooui

*   

    *   https://gitlab.com/hodgskin-callan/Invention


    *   https://medium.com/@hodgskin.callan/introducing-an-alternative-to-xamarin-forms-4bf1f1c7807b



https://www.reddit.com/r/dotnet/comments/3elc36/alternative_to_xamarin_forms/

Caliburn Micro 3.0 

MvvmCross 

Fusion
https://github.com/altavant/Fusion


Vulkan doesn't have any major benefits over OpenGL when it comes to UI rendering. Vulkan's primary selling point is lower driver overhead and therefore better performance, but literally any (i)GPU on the market is fast enough to render UIs of practically unlimited complexity.

OpenGL supports more platforms, is more well known, has more available documentation and tooling, and is easier to learn and use. OpenGL drivers are more mature.

Since the framework in question is running on .NET, function calls to native code have some unavoidable overhead. While the per-call cost is not that huge, Vulkan being a lower level API means that you have to make a significantly larger number of these calls. In extreme case, a .NET app using Vulkan might run slower than an equivalent app using OpenGL due to this overhead.


You are mostly right but Vulkan also allows much more batching of calls so I don't know about this specific point.


What you're referring to is batching GPU commands, which is quite a bit different.

He's referring to .NET/native interop method calls having unavoidable overhead, i.e. actually calling the API itself. It has nothing to do with rendering or the specific API even, you'd have the same overhead making native calls from .NET to any other native Windows component.

Vulkan is not available on Apple operating systems. They use metal (because NIH)

Apple is a member of the Khronos Group. They knew about the plans for a new lightweight API and could have simply made a proposal with Metal or waited for Vulkan.

Instead, they decided to pretty much ignore Khronos and do their own thing now.

