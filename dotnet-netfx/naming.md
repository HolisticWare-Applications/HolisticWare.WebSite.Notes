# .NET Naming

naming.md

*   https://learn.microsoft.com/en-us/dotnet/fundamentals/implementations

*   merging 2 implementation[s]

    *   .NET Framework

    *   Mono

*   result

    *   .NET [core]
    
The latest .NET Framework release was 4.8.1 in August 2022, with the last major version being 4.8 in April 2019. There is no new development for .NET Framework (except security updates), and no new features are being added.

.NET Core was the planned successor to .NET Framework. Unlike .NET Framework, which was closed source and proprietary, .NET Core was open sourced. The latest .NET Core version release was 3.1 in December 2019. After that release, ".NET Core" was renamed to ".NET". No version of .NET released after December 2019 has used the name ".NET Core".

.NET is the current iteration of the former .NET Core project. It is still open source, is actively developed, and has a regular release schedule. The latest stable release of .NET was 8.0 in November 2023, with .NET 9.0 expected to officially release later this month.

.NET Standard is an API specification, not a .NET release.

The .NET Standard 2.0 specification is the latest which supports the .NET Framework runtimes. A library or project which targets .NET Standard 2.0 can be loaded and referenced by .NET Framework 4.6.1 to .NET Framework 4.8.1, .NET Core 2.0 to .NET Core 3.1, and .NET 5.0 and all later versions of .NET (currently up to .NET 8.0, with .NET 9.0 to be included upon release).

The .NET Standard 2.1 specification does not support .NET Framework or .NET Core before 3.0. A library which targets .NET Standard 2.1 can be loaded and referenced by .NET Core 3.0 to .NET Core 3.1, and .NET 5.0 and all later versions of .NET.

No new .NET Standard specifications are planned by Microsoft at this time, with newer .NET APIs planned to be supported by .NET Standard 2.1 indefinitely.

Saying that "nobody knows" the correct naming scheme for .NET is patently untrue.


.NET Core was explicitly named that way to differentiate between the "new" version and .NET Framework, because they were inherently incompatible.

With .NET 5.0, all supported .NET Framework APIs were represented (with some Framework APIs being dropped). Microsoft increased the version number to above that of the latest .NET Framework and renamed the project to just ".NET" to signify that this is the definitive .NET moving forward.

Prior to .NET 5.0, these conditions simply weren't satisfied.

But my problem is that I regularly have to explain what we're doing to management and THEY don't get this at all.

That's an understandable point of confusion if your management is not comprised of software developers who have taken the time to make themselves aware of why these naming schemes were used in the first place. But that's not what you originally said and not what I responded to. You've moved the goal posts.

The simplest thing to tell your management is that the newest versions are called ".NET" and anything called ".NET Framework" or ".NET Core" are older. Unless you have a large existing codebase using one of these older versions or a very specific reason to use them, then you should be using .NET, not Framework or Core. If you do have existing code, porting it to a modern .NET version is probably a worthwhile goal to leverage newer features, and that's an argument you could present to your management.

Unless you're writing a source generator or need to interoperate with a .NET Framework project from a .NET project, then there's likely no reason to mention .NET Standard 2.0.

AFAICT the only reason to target .NET Standard 2.1 would be to allow older .NET Core or .NET projects to reference a project using newer .NET features.

It seems that pitching this to management shouldn't be quite the hurdle that you're presenting it as.

MS could have made this simple and easy to understand and explain but they DIDN'T!

Aside from the few paragraphs in my comment above being a few paragraphs worth of text, is there anything inherently difficult to explain or understand about what I said? I'm honestly not sure what alternate approach you wish Microsoft would have taken to actively develop and release an incompatible .NET runtime over the years that it took to get to .NET 5.0.



## References

*   https://www.reddit.com/r/csharp/comments/1gkb7ey/very_new_to_csharp_and_following_a_course_why/

*   https://www.reddit.com/r/csharp/comments/1gkb7ey/comment/lvjwc4y/

    https://www.reddit.com/r/csharp/comments/1gkb7ey/comment/lvk7dv4/
