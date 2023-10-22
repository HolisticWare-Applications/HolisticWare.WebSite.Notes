# Select SDK and `global.json`

select-sdk-and-global-json.md


https://learn.microsoft.com/en-us/dotnet/core/tools/global-json#allowprerelease

The process for selecting an SDK version is:


1.  dotnet searches for a `global. json`` file iteratively reverse-navigating the path upward 
    from the current working directory.

    * !!! current working directory where `dotnet` command is executed. !!! *
      
    * !!! NOT project file (`*.csproj`) directory. !!! *

2.  dotnet uses the SDK specified in the first `global.json` found.

3.  dotnet uses the latest installed SDK if no `global.json` is found.



*   https://learn.microsoft.com/en-us/dotnet/core/tools/global-json#matching-rules
