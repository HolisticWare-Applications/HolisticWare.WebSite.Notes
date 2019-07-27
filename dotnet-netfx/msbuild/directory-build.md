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

## Links / References

*   https://www.reddit.com/r/csharp/comments/9d8uxb/vs2017_msbuild_helpful_tricks/

*   https://thomaslevesque.com/2017/09/18/common-msbuild-properties-and-items-with-directory-build-props/

*   https://medium.com/@kritner/using-configuration-files-to-manage-nuget-package-versions-and-other-stuff-909f448369fd

