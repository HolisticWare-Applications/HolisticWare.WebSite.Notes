# Debugging, PDBs, source symbols

Symbol stores?


## NuGet and Debugging 

http://www.lionhack.com/2014/01/14/advanced-dotnet-debugging-pdbs-and-symbols/


1.   add PDBs
2.   nuget will create       

    {identifier}.nupkg
    {identifier}.symbols.nupkg

Xamarin.Auth

    Xamarin.Auth.1.5.0-alpha-12.nupkg
    Xamarin.Auth.1.5.0-alpha-12.symbols.nupkg
    Xamarin.Auth.XamarinForms.1.5.0-alpha-12.nupkg
    Xamarin.Auth.XamarinForms.1.5.0-alpha-12.symbols.nupkg
    Xamarin.Auth.Extensions.1.5.0-alpha-12.nupkg
    Xamarin.Auth.Extensions.1.5.0-alpha-12.symbols.nupkg

*.symbols.nupkg

Symbolservers

*   Microsoft publishes symbols for all public releases of Windows Operation System at 
    http://msdl.microsoft.com/download/symbols      
    Tools +/ Options +/ Debugging +/ Enabling "Microsoft Symbol Servers"        
*   Microsoft publishes for .net Framework Reference Source Symbols at 
    http://referencesource.microsoft.com/       
    ability to step through internal .NET Framework code when debugging, rather than be         
    presented with a "Dissassembly" window
    *   utilizes a SYMSRV extension to link symbols to remote source files

Developers setup their Visual Studio debugger to make use of Symbol Servers, by configuring 
a list of them to try (under menu Tools > Options > Debugging > Symbols). Debugger will try 
to download symbols from the specified Symbol Servers, if it cannot find them locally or 
in the cache.



*   Symbolsource        
    www.symbolsource.org        
    http://www.symbolsource.org/Public      
*   https://nuget.smbsrc.net/


## GitLink

https://github.com/GitTools/GitLink#how-does-it-work
https://gitter.im/GitTools/GitLink?source=explore

http://geertvanhorrik.com/2014/09/17/gitlink-2-0-making-open-source-accessible/
https://oren.codes/2015/09/23/enabling-source-code-debugging-for-your-nuget-packages-with-gitlink/

Used by:

*   Roslyn
*   ReactiveUI
*   OxyPlot
*   

http://gitlink.t-code.pl/#/
### GitLink and Cake



http://www.michael-whelan.net/continuous-delivery-github-cake-gittools-appveyor/
https://www.bountysource.com/issues/36732905-migrate-build-scripts-over-to-cake
https://github.com/TestStack/TestStack.BDDfy
https://github.com/akavache/Akavache/blob/develop/build.cake




## Paket

