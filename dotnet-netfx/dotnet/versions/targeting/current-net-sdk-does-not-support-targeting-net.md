# “The current NET SDK does not support targeting NET 7.0.”

current-net-sdk-does-not-support-targeting-net.md


The current NET SDK does not support targeting NET Y. Either target . NET X or lower, 
or use a version of the NET SDK that supports .NET Y.


*   `dotnet` uses version X

    *   `dotneet --version`

    *   `dotnet --list-sdks`

    *   install version Y

        *   install/updated Visual Studio or dotnet itself

    *   check `global.json` if version Y is installed, but version X is used

    *   target version X in `*.csproj` 
