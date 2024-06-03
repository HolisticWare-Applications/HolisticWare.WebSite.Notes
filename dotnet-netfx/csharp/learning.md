# Learning

learning.md

*   [tutorials.md](tutorials.md)

*   [diverse.md](diverse.md)

*   [webistes.md](webistes.md)

## videos

*   C# in 101 Shorts

    https://www.youtube.com/playlist?list=PLo7rGmaumEKDyrUy5rEFmiuRON_LeG5Rv

## Diverse

*   https://www.reddit.com/r/csharp/comments/12ll4hj/new_to_c/

*   https://www.reddit.com/r/csharp/comments/121fro5/c_course_recommendation/

*   https://www.reddit.com/r/dotnet/comments/1090tk9/learning_resource_for_seniors/

*   https://www.reddit.com/r/csharp/comments/12tfr93/getting_laid_off_and_wanting_to_learn_c/

*   https://www.reddit.com/r/csharp/comments/12v7mc7/important_features_to_know_about_c/

*   https://www.reddit.com/r/csharp/comments/12pxvhh/why_do_you_love_net_c/

*   https://github.com/dotnet-architecture/eShopOnWeb

*   https://github.com/dotnet-architecture/eShopOnContainers

*   https://github.com/MunGell/awesome-for-beginners

*   https://github.com/prakhar1989/awesome-courses

*   https://github.com/binhnguyennus/awesome-scalability

*   https://github.com/dypsilon/frontend-dev-bookmarks

*   https://github.com/DovAmir/awesome-design-patterns

*   https://github.com/serhii-londar/open-source-mac-os-apps

*   https://www.reddit.com/r/dotnet/comments/12bu1ps/where_can_i_learn_more_about_design_patterns/

*   https://www.reddit.com/r/csharp/comments/zbtq74/any_site_like_codeacademy_but_not_as_sucky_as/

*   https://www.reddit.com/r/csharp/comments/zaoh2j/professional_transition_from_java_to_c/

*   https://www.reddit.com/r/dotnet/comments/ys02xx/open_source_projects_looking_for_contributors/



*   https://aka.ms/csharp-discord

    *   https://discord.com/invite/ccyrDKv
    
## Advanced features

Easy FFI (ABI) declaration and usage (P/Invoke)

async/await for the UI

Hardware Intrinsics for math operations such as audio rendering

The fixed keyword to pin managed memory, and pass it as a pointer to native code

pattern matching

Null reference exception warnings and Null propagation

The ability to have unsafe code, that uses addresses to structures

Source-generated code for the MVVM Pattern (RelayCommand) so I don't have to write boiler plate code

A type-safe and memory-safe representation of a contiguous region of arbitrary memory (Span)

readonly record structs (KeyboardEventArgs)

LINQ (not pictured, but I had to mention it)



# TPL Data flow 


https://www.reddit.com/r/dotnet/comments/17xv4tx/is_tpl_data_flow_still_a_thing/?share_id=2je1wQMqDwcvdkVXl2T7D&utm_content=1&utm_medium=android_app&utm_name=androidcss&utm_source=share&utm_term=1

https://github.com/Open-NET-Libraries/Open.ChannelExtensions
https://open-net-libraries.github.io/Open.ChannelExtensions/api/Open.ChannelExtensions.Extensions.html#methods

https://learn.microsoft.com/en-us/dotnet/core/extensions/channels
https://devblogs.microsoft.com/dotnet/an-introduction-to-system-threading-channels/


BufferBlock<T>


DotMake.CommandLine is a library which provides declarative syntax for System.CommandLine via attributes for easy, fast, strongly-typed (no reflection) usage. The library includes a source generator which automagically converts your classes to CLI commands and properties to CLI options or CLI arguments.


Starting with C# 11 you can declare abstract static interface members:

```csharp
public interface 
                                        IFactory<T>
                                        where T 
                                        : 
                                        IFactory<T>
{
    static abstract 
        T
                                        Create
                                        (
                                            int input
                                        );
}

Applied in the Bar method:

public 
    T 
                                        Bar<T>
                                        (
                                            int a
                                        )
                                        where T 
                                        : 
                                        IFactory<T> 
{
   return T.Create(a);
}

https://stackoverflow.com/questions/20705643/method-overloading-with-different-return-type

https://stackoverflow.com/questions/16722362/c-sharp-overload-return-type-recommended-approach