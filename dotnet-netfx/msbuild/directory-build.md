# Directory.Build

directory-build.md

*   `Directory.Build.targets`

*   `Directory.Build.props`


*   Directory.build.props is imported at the very beginning of the project

*   Any file imported later will override the properties defined in 
    `Directory.Build.props`

*   `Directory.Build.props` file works in an “inheritance” sort of manner in that 
    “deeper” `Directory.Build.props` files are able to override properties set in 
    “higher” files

You don't even really need that, just chuck <PackageReference Update"/> in http://Directory.Build .targets further up the tree and you can override the project regardless of what it put in there.

If you put your solution-wide <PackageReference /> in http://Directory.Build .props next to the solution, the new project system will automatically pick it up/restore when you make changes to it.

You can see when we upgraded this package, it also added the associated analyzers.







.props & .targets file
As said before these files are just normal MsBuild project files. By convention, when a file contains properties its extension should be props, and if it defines targets is should be targets. 



Importing additional MsBuild project files
Explicit import
You can import additional project file simply by importing it explicitly.

<import project="additionalProperties.props" />
Directory.Build.props & Directory.Build.targets
Directory.Build.props and Directory.Build.targets are names of the files that you can add to your solution and will be automatically imported into your project. Directory tree is scanned all the way to the root to find and apply files with given names. Your solution main directory doesn’t matter here. It will scan it all the way to C:\ drive.
This mechanism can be useful to add common properties for all your projects(like author, product etc.) to make your project files smaller and better organised. For more details about topic you can refer to the documentation.






## Links / References

*   https://www.reddit.com/r/csharp/comments/9d8uxb/vs2017_msbuild_helpful_tricks/

*   https://thomaslevesque.com/2017/09/18/common-msbuild-properties-and-items-with-directory-build-props/

*   https://medium.com/@kritner/using-configuration-files-to-manage-nuget-package-versions-and-other-stuff-909f448369fd

https://twitter.com/davkean/status/980076449636917249?lang=en


http://www.stempowski.net/net-core/targets-props-files/













https://github.com/dotnet/sourcelink/
