# CliWrap

cliwrap.md

*   https://github.com/Tyrrrz/CliWrap

```csharp
// We're only interested in the exit code
var exitCode = await Cli
                        .Wrap("path/to/exe")
                        .WithArguments("--foo bar")
                        .ExecuteAsync()
                        .Select(r => r.ExitCode)
                        ;

// We're only interested in stdout
var stdOut = await Cli
                        .Wrap("path/to/exe")
                        .WithArguments("--foo bar")
                        .ExecuteBufferedAsync()
                        .Select(r => r.StandardOutput)
                        ;
```

*   https://dev.to/tyrrrz/cliwrap-execute-shell-commands-with-extensive-support-for-piping-3gm8

*   https://www.reddit.com/r/csharp/comments/g3mqzl/cliwrap_forget_about_ever_writing/

*   https://www.reddit.com/r/csharp/comments/k8hsoy/getting_lines_written_to_stdout_in_4_conceptually/

*   sample snippets and performance

    *   https://github.com/Samples-Playgrounds/Samples.CSharp/tree/master/samples/performance/ecosystem-libraries/CliWrap
    
## Videos

*   Svitla Smart Talk: Oleksii Holub - Interacting with command line in .NET using CliWrap

    *   https://www.youtube.com/watch?v=J43PiEs0uOs

