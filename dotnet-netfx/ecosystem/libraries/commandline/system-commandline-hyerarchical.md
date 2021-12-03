# System.CommandLine hyerarchical

system-commandline-hyerarchical.md

https://dotnetdevaddict.co.za/2020/09/25/getting-started-with-system-commandline/

```
app-name greeting ...
app-name echo times ...
app-name echo forever ...
```



```csharp
public static async Task<int> Main(string[] args)
{
    var cmd = new RootCommand
    {
        new Command
                (
                    "greeting", 
                    "Say hi."
                )
        {
            new Argument<string>
                        (
                            "name", 
                            "Your name."
                        ),
            new Option<string?>
                        (
                            new[] { "--greeting", "-g" }, 
                            "The greeting to use."
                        ),
            new Option<string>
                        (
                            new[] { "--verbose", "-v" }, 
                            "Show the deets."
                        ),
        }
        .WithHandler(nameof(HandleGreeting)),
        new Command("echo", "Stop copying me!")
        {
            new Command
                    (
                        "times", 
                        "Repeat a number of times."
                    )
            {
                new Argument<string>
                            (
                                "words", 
                                "The thing you are saying."
                            ),
                new Option<int>
                            (
                                new[] { "--count", "-c" }, 
                                description: "The number of times to copy you.",
                                getDefaultValue: () => 1
                            ),
                new Option<int>
                            (
                                new[] { "--delay", "-d" }, 
                                description: "The delay between each echo.",
                                getDefaultValue: () => 100
                            ),
                new Option<string>
                            (
                                new[] { "--verbose", "-v" }, 
                                "Show the deets."
                            ),
            }
            .WithHandler(nameof(HandleEchoTimesAsync)),
            new Command
                    (
                        "forever", 
                        "Just keep repeating."
                    )
            {
                new Argument<string>
                            (
                                "words", 
                                "The thing you are saying."
                            ),
                new Option<int>
                            (
                                new[] { "--delay", "-d" }, 
                                description: "The delay between each echo.",
                                getDefaultValue: () => 100),
                new Option<string>
                            (
                                new[] { "--verbose", "-v" }, 
                                "Show the deets."
                            ),
            }.WithHandler(nameof(HandleEchoForeverAsync)),
        },
    };
 
    return await cmd.InvokeAsync(args);
}
```




